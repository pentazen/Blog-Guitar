import { BlogGuitarPage } from './app.po';

describe('blog-guitar App', () => {
  let page: BlogGuitarPage;

  beforeEach(() => {
    page = new BlogGuitarPage();
  });

  it('should display message saying app works', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('app works!');
  });
});
