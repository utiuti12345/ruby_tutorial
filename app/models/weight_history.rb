class WeightHistory < ApplicationRecord
  belongs_to :user

  before_validation :set_memo

  validates :user_id, presence: { message: 'ユーザを入力してください' }
  validates :memo, length: { maximum: 255, too_long: 'メモは最大%<count>s文字以内で入力してください' }
  validate :weight_validate

  def weight_validate
    errors.add(:weight, '体重が正しくありません。') if weight < 1
  end

  def set_memo
    self.memo = 'なし' if memo.nil?
  end
end
