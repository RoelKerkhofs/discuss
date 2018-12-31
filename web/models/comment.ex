defmodule Discuss.Comment do
  use Discuss.Web, :model

  schema "comment" do
      field :content, :string
      belongs_to :user, Discussion.User
      belongs_to :topic, Discussion.Topic
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:content])
    |> validate_required([:content])
  end
end
