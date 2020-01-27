using CatalogService from '../../srv/cat-service';

annotate CatalogService.Books with {
    title @title: 'Book Title'
}

annotate CatalogService.Books with @(
    UI: {
        SelectionFields: [title],
        LineItem: [
            { Value: ID, Label: 'ID' },
            { Value: title, Label: 'Title' },
            { Value: author.name, Label: 'Author' },
            { Value: stock, Label: 'Stock' },
        ]
    }
);

annotate CatalogService.Books with @(
    UI: {
        HeaderInfo: {
            Description: {Value: title}
        },
        HeaderFacets: [
			{$Type: 'UI.ReferenceFacet', Label: '{i18n>Description}', Target: '@UI.FieldGroup#Descr'},
		],
		Facets: [
			{$Type: 'UI.ReferenceFacet', Label: '{i18n>Details}', Target: '@UI.FieldGroup#Stock'},
		],
        FieldGroup#Descr: {
            Data: [
				{Value: title},
			]
        },
        FieldGroup#Stock: {
            Data: [
				{Value: stock},
				
			]
        }
    }
);
