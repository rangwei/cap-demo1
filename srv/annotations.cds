annotate CatalogService.Orders with {
	ID @title:'Order ID'
}


annotate CatalogService.Orders with @(

	UI: {
		SelectionFields: [ ID ],
	}

);

annotate CatalogService.Authors with {
    name @title: 'Author Name'
}

annotate CatalogService.Authors with @(
    UI: {
        SelectionFields: [ name ],
        LineItem: [
            { Value: ID, Label: 'ID'},
            { Value: name, Label: 'NAME'}
        ],
        HeaderInfo: {
			TypeName: 'Author',
			TypeNamePlural: 'Author',
			Description: { Value: name }
		}
    }
);

