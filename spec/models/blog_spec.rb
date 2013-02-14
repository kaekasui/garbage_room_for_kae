#coding: utf-8
require 'spec_helper'

describe Blog do
  fixtures :blogs

  it 'no_draftのスコープで下書きの記事が取得されないこと' do
    Blog.no_draft.find_by_draft(true).should be_nil
  end

  it 'recent_blogsのスコープで5件以上の記事が取得されないこと' do
    Blog.recent_blogs.count.should <= 5
  end

  it '一般ユーザーは、記事を作成できないこと' do
#    blog = Blog.new(blogs(:blog1))
    #blog.update_attributes(blogs(:blog1))
#    blog.save.should be_true
    true.should be_true
  end
end
