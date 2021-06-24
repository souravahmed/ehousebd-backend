



from django.db.models import query
from category.models import Category


class CategorySelector():
    """
    this class is responsible for only retriving objects noting more
    
    """
    @classmethod
    def filter_category(self, **kwargs):
        category = Category.objects.filter(**kwargs)
        #print(str(category.query))
        return category
    