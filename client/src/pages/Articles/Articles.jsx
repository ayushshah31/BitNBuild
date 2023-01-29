import React, {useState, useEffect} from 'react'
import Navbar from '../../components/Navbar';
import axios from 'axios';
import ArticleItem from './ArticleItem';

const Articles = () => {
  const [articles, setArticles] = useState([])

  useEffect(() => {
    const getArticles = async () => {
      const response = await axios.get("https://newsapi.org/v2/top-headlines?country=in&category=health&apiKey=5f73f9e3da4342419f8bb20100bb2e2f");
      console.log(response.data.articles[0].title);
      console.log(response.data);
      setArticles(response.data.articles);
    };
    getArticles();
  }, []);
  return (
    <div>
      <Navbar />
      <div className="m-7 mt-20 ">
        <div className="flex justify-center my-4">
          <div className="text-3xl font-bold overflow-hidden">Read some informative articles!</div>
        </div>
        <div className="grid grid-cols-3">
          {articles.map((article) => {
            return (
              <ArticleItem
                key={article.publishedAt}
                name={article.source.name}
                title={article.title}
                urlToImage={article.urlToImage}
                url={article.url}
                description={article.description}
              />
            );
          })}
        </div>
      </div>
    </div>
  )
}

export default Articles;