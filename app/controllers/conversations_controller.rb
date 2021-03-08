class ConversationsController < ApplicationController
    # skip_before_action :authorized, only: [:index]
    def index
        conversations = Conversation.all.select{|conversation| conversation.users.include?(current_user)}
        render json: conversations
      end
    
      def create
        
        conversation = Conversation.new(conversation_params)
        if conversation.save
          UserConversation.create(user_id: params[:sender_id], conversation_id: conversation.id)
          UserConversation.create(user_id: params[:receiver_id], conversation_id: conversation.id)
          serialized_data = ActiveModelSerializers::Adapter::Json.new(
            ConversationSerializer.new(conversation)
          ).serializable_hash
          ActionCable.server.broadcast 'conversations_channel', serialized_data
          head :ok
        end
      end
      
      private
      
      def conversation_params
        params.require(:conversation).permit(:title)
      end
end
