import React, { useState, useEffect } from 'react';

function App() {
  const [articles, setArticles] = useState([]);

  useEffect(() => {
    fetch('http://192.168.100.18:8081/articles')
      .then(res => res.json())
      .then(data => setArticles(data))
      .catch(err => console.error(err));
  }, []);

  return (
    <div>
      <h1>List of Articles</h1>
      <ul>
        {articles.map(article => (
          <li key={article.id}>{article.name}</li>
        ))}
      </ul>
    </div>
  );
}

export default App;
