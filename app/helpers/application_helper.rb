module ApplicationHelper

  # 改行を改行タグへ変換する
  def to_br(text)
    text.gsub(/\r\n|\r|\n/, "<br />")
  end

  # 入力必須の項目であった場合に「*」を表示する
  def mark_required(object, attribute)
    mark = raw "<span class='require_mark'>*</span>"
    mark if object.class.validators_on(attribute).map(&:class).include? ActiveModel::Validations::PresenceValidator
  end

  # 入力必須の項目であった場合に「*」を表示する（form-verticalの場合のみ）
  def mark_required_vertical(object, attribute)
    mark = raw "<font color='red'>*</font>"
    mark if object.class.validators_on(attribute).map(&:class).include? ActiveModel::Validations::PresenceValidator
  end
end
