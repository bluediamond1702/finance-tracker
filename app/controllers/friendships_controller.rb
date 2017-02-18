class FriendshipsController < ApplicationController
	def destroy
		@friendship = current_user.friendships.where(friend_id: param[:id].first)
		@friendship.destroy
		respond_to do |format|
			format.html { redirect_to my_friend_path, notice: "Friend was successfully removed."}
		end
	end
end