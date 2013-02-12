#coding: utf-8
require 'spec_helper'

describe Blog do
  fixtures :blogs
  before do
  end

  it 'no_draftのスコープで下書きの記事が取得されないこと' do
    blog = blogs(:blog2)
    Blog.no_draft.find_by_draft(true).should be_nil
  end

  describe '#recent' do
    it '日本語' do
      #Blog.all.count.should < 5
      blogs.should be_true
    end
  end
end
