require_relative '../../../../apps/web/views/posts/destroy'

RSpec.describe Web::Views::Posts::Destroy do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/posts/destroy.html.erb') }
  let(:view)      { described_class.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    expect(view.foo).to eq exposures.fetch(:foo)
  end
end
