from size.models import Size
from product.models import Product
from color.models import Color


class ProductSelector():
    """
    this class is responsible for only retriving objects noting more
    
    """
    @classmethod
    def get_all(self):
        return Product.product_manager.all()
    
    @classmethod
    def filter_product(self, **kwargs):
        return Product.product_manager.filter(**kwargs)
    
    @classmethod
    def get_products(self):
        return Product.product_manager.filter(product_attributes__id__isnull=False).distinct()
    
    @classmethod
    def get_featured_products(self):
        return ProductSelector.get_products().filter(is_featured=True)
    
    @classmethod
    def get_brand_products(self, brand_slug):
        return ProductSelector.get_products().filter(brand__slug=brand_slug)
    
    @classmethod
    def get_product_colors(self):
        return Color.objects.filter(product_attributes__product__id__isnull=False).distinct()
    
    
    @classmethod
    def get_product_sizes(self):
        return Size.objects.filter(product_attributes__product__id__isnull=False).distinct()
    
    @classmethod
    def sort_by_product_attribute(self, query_set, field, order_by):
        
        query_string  = f'product_attributes__{field}'
        if order_by == 'desc':
            query_string = f'-{query_string}' 
            
        return query_set.order_by(query_string)