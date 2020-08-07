class TagsController < ApplicationController
      def show
        @tag = Tag.find(params[:id])
      end

      def destroy
        @tag = Tag.find(params[:id])
        @tag.destroy
        flash.notice = "Tag '#{@tag.name}' Destroyed!"
        redirect_to articles_path

      end

      def edit
        @tag = Tag.find(params[:id])
        flash.notice = "Tag '#{@tag.name}' Edited!"
      end
end
