defmodule Discuss.Topic do
  use Discuss.Web, :model

  schema "topics" do
      field :title, :string
  end

  def changeset(struct, params \\ %{}) do
    
  end
end
