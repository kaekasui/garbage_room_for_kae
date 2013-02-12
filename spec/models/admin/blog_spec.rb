#coding: utf-8
require 'spec_helper'

describe Admin::Blog do
  fixtures :blogs, :blog_comments
  before do
    @blog = blogs(:blog1)
  end

  describe 'validate' do
    context 'with normal' do
      it 'validation errorは起きない' do
        @blog.should be_valid
      end
    end
    context 'with empty title' do
      it 'validation error' do
        @blog.title = ""
        @blog.should_not be_valid
      end
    end
    context 'with empty contents1' do
      it 'validation error' do
        @blog.contents1 = ""
        @blog.should_not be_valid
      end
    end
    context 'with empty contents2' do
      it 'validation error' do
        @blog.contents2 = ""
        @blog.should be_valid
      end
    end
  end

  describe 'relation' do
    before do
      @blog = blogs(:blog1)
    end

    it '複数のblog_commentを所有すること' do
      @blog.should have_at_least(2).blog_comments
    end
  end
end
