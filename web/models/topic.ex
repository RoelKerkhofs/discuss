defmodule Discuss.Topic do
  use Discuss.Web, :model

  schema "topics" do
      field :title, :string
      belongs_to :user, Discussion.User
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title])
    |> validate_required([:title])
  end
end
