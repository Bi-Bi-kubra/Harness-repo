// index.js
module.exports = async function (context, req) {
    const name = "John Doe"; // 🔒 hardcoded name

    context.res = {
        status: 200,
        body: {
            message: `Hello, ${name}! Welcome to your Function App.`,
            timestamp: new Date().toISOString()
        }
    };
};
