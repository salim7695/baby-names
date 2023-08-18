# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :list
  has_one :recent_list
  has_many :names, dependent: :destroy

  after_create :create_list, :populate_recent_list

  def create_list
    List.create!(user_id: id)
  end

  def populate_recent_list
    RecentList.create!(user_id: id, list_id: list.id)
  end
end
