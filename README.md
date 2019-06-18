# Websites using Swift and AWS Lambda

This is the source code for this website: [https://swift-aws-lambda-website.jasonzurita.com](https://swift-aws-lambda-website.jasonzurita.com), that is written in [Swift](https://www.swift.org) and hosted on [Amazon Web Services (AWS)](https://aws.amazon.com) mainly using [AWS Lambda](https://aws.amazon.com/lambda/) and [API Gateway](https://aws.amazon.com/api-gateway/).

This is the result of asking, _Can I make lightweight websites written in Swift that are simple, fun to write, and easy deploy?_ **The answer is yes!**

---

**Check out the related blog posts for a detailed breakdown:**
- [Websites using Swift and AWS Lambda — Part 1](https://www.jasonzurita.com/websites-using-swift-and-aws-lambda/) - Overview & Generating HTML/CSS using Swift
- [Websites using Swift and AWS Lambda — Part 2](https://jasonzurita.com/websites-using-swift-and-aws-lambda-part-2/) — Deploying & hosting the website using Amazon Web Services (AWS)

---

**To get started playing with this project:**
- Clone it
- Local website development
  + `swift run Local-Website`
  + open _Artifacts/index.html_ in your preferred web browser
- AWS Lambda function
  + `make`
  + upload to _Artifacts/lambda.zip_ to AWS Lambda
    + _more details in the part 2 blog post above_
- Try changing _Sources/GenerateWebsite/GenerateWebsite.swift_ and rerunning the local development flow above to see changes!
