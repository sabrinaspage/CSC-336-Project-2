from website import create_app

app = create_app()
#Cant login to github
if __name__ == '__main__':
    app.run(debug=True)

