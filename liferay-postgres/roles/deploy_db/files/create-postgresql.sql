create table Address (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	uuid_ varchar(75) null,
	externalReferenceCode varchar(75) null,
	addressId bigint not null,
	companyId bigint,
	userId bigint,
	userName varchar(75) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	classNameId bigint,
	classPK bigint,
	countryId bigint,
	listTypeId bigint,
	regionId bigint,
	city varchar(75) null,
	description text null,
	latitude double precision,
	longitude double precision,
	mailing bool,
	name varchar(255) null,
	primary_ bool,
	street1 varchar(255) null,
	street2 varchar(255) null,
	street3 varchar(255) null,
	validationDate timestamp null,
	validationStatus integer,
	zip varchar(75) null,
	primary key (addressId, ctCollectionId)
);

create table AnnouncementsDelivery (
	mvccVersion bigint default 0 not null,
	deliveryId bigint not null primary key,
	companyId bigint,
	userId bigint,
	type_ varchar(75) null,
	email bool,
	sms bool,
	website bool
);

create table AnnouncementsEntry (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	uuid_ varchar(75) null,
	entryId bigint not null,
	companyId bigint,
	userId bigint,
	userName varchar(75) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	classNameId bigint,
	classPK bigint,
	title varchar(75) null,
	content text null,
	url text null,
	type_ varchar(75) null,
	displayDate timestamp null,
	expirationDate timestamp null,
	priority integer,
	alert bool,
	primary key (entryId, ctCollectionId)
);

create table AnnouncementsFlag (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	flagId bigint not null,
	companyId bigint,
	userId bigint,
	createDate timestamp null,
	entryId bigint,
	value integer,
	primary key (flagId, ctCollectionId)
);

create table AssetCategory (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	uuid_ varchar(75) null,
	externalReferenceCode varchar(75) null,
	categoryId bigint not null,
	groupId bigint,
	companyId bigint,
	userId bigint,
	userName varchar(75) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	parentCategoryId bigint,
	treePath text null,
	name varchar(255) null,
	title text null,
	description text null,
	vocabularyId bigint,
	lastPublishDate timestamp null,
	primary key (categoryId, ctCollectionId)
);

create table AssetEntries_AssetTags (
	companyId bigint not null,
	entryId bigint not null,
	tagId bigint not null,
	ctCollectionId bigint default 0 not null,
	ctChangeType bool,
	primary key (entryId, tagId, ctCollectionId)
);

create table AssetEntry (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	entryId bigint not null,
	groupId bigint,
	companyId bigint,
	userId bigint,
	userName varchar(75) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	classNameId bigint,
	classPK bigint,
	classUuid varchar(75) null,
	classTypeId bigint,
	listable bool,
	visible bool,
	startDate timestamp null,
	endDate timestamp null,
	publishDate timestamp null,
	expirationDate timestamp null,
	mimeType varchar(75) null,
	title text null,
	description text null,
	summary text null,
	url text null,
	layoutUuid varchar(75) null,
	height integer,
	width integer,
	priority double precision,
	primary key (entryId, ctCollectionId)
);

create table AssetTag (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	uuid_ varchar(75) null,
	tagId bigint not null,
	groupId bigint,
	companyId bigint,
	userId bigint,
	userName varchar(75) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	name varchar(75) null,
	assetCount integer,
	lastPublishDate timestamp null,
	primary key (tagId, ctCollectionId)
);

create table AssetVocabulary (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	uuid_ varchar(75) null,
	externalReferenceCode varchar(75) null,
	vocabularyId bigint not null,
	groupId bigint,
	companyId bigint,
	userId bigint,
	userName varchar(75) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	name varchar(75) null,
	title text null,
	description text null,
	settings_ text null,
	visibilityType integer,
	lastPublishDate timestamp null,
	primary key (vocabularyId, ctCollectionId)
);

create table BrowserTracker (
	mvccVersion bigint default 0 not null,
	browserTrackerId bigint not null primary key,
	companyId bigint,
	userId bigint,
	browserKey bigint
);

create table ClassName_ (
	mvccVersion bigint default 0 not null,
	classNameId bigint not null primary key,
	value varchar(200) null
);

create table Company (
	mvccVersion bigint default 0 not null,
	companyId bigint not null primary key,
	userId bigint,
	userName varchar(75) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	webId varchar(75) null,
	mx varchar(200) null,
	homeURL text null,
	logoId bigint,
	maxUsers integer,
	active_ bool,
	name varchar(75) null,
	legalName varchar(75) null,
	legalId varchar(75) null,
	legalType varchar(75) null,
	sicCode varchar(75) null,
	tickerSymbol varchar(75) null,
	industry varchar(75) null,
	type_ varchar(75) null,
	size_ varchar(75) null,
	indexNameCurrent varchar(75) null,
	indexNameNext varchar(75) null
);

create table CompanyInfo (
	mvccVersion bigint default 0 not null,
	companyInfoId bigint not null primary key,
	companyId bigint,
	key_ text null
);

create table Contact_ (
	mvccVersion bigint default 0 not null,
	contactId bigint not null primary key,
	companyId bigint,
	userId bigint,
	userName varchar(75) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	classNameId bigint,
	classPK bigint,
	parentContactId bigint,
	emailAddress varchar(254) null,
	firstName varchar(75) null,
	middleName varchar(75) null,
	lastName varchar(75) null,
	prefixListTypeId bigint,
	suffixListTypeId bigint,
	male bool,
	birthday timestamp null,
	smsSn varchar(75) null,
	facebookSn varchar(75) null,
	jabberSn varchar(75) null,
	skypeSn varchar(75) null,
	twitterSn varchar(75) null,
	employeeStatusId varchar(75) null,
	employeeNumber varchar(75) null,
	jobTitle varchar(100) null,
	jobClass varchar(75) null,
	hoursOfOperation varchar(75) null
);

create table Counter (
	name varchar(150) not null primary key,
	currentId bigint
);

create table Country (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	uuid_ varchar(75) null,
	defaultLanguageId varchar(75) null,
	countryId bigint not null,
	companyId bigint,
	userId bigint,
	userName varchar(75) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	a2 varchar(75) null,
	a3 varchar(75) null,
	active_ bool,
	billingAllowed bool,
	groupFilterEnabled bool,
	idd_ varchar(75) null,
	name varchar(75) null,
	number_ varchar(75) null,
	position double precision,
	shippingAllowed bool,
	subjectToVAT bool,
	zipRequired bool,
	lastPublishDate timestamp null,
	primary key (countryId, ctCollectionId)
);

create table CountryLocalization (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	countryLocalizationId bigint not null,
	companyId bigint,
	countryId bigint,
	languageId varchar(75) null,
	title varchar(75) null,
	primary key (countryLocalizationId, ctCollectionId)
);

create table DLFileEntry (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	uuid_ varchar(75) null,
	externalReferenceCode varchar(75) null,
	fileEntryId bigint not null,
	groupId bigint,
	companyId bigint,
	userId bigint,
	userName varchar(75) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	classNameId bigint,
	classPK bigint,
	repositoryId bigint,
	folderId bigint,
	treePath text null,
	name varchar(255) null,
	fileName varchar(255) null,
	extension varchar(75) null,
	mimeType varchar(75) null,
	title varchar(255) null,
	description text null,
	extraSettings text null,
	fileEntryTypeId bigint,
	version varchar(75) null,
	size_ bigint,
	smallImageId bigint,
	largeImageId bigint,
	custom1ImageId bigint,
	custom2ImageId bigint,
	manualCheckInRequired bool,
	displayDate timestamp null,
	expirationDate timestamp null,
	reviewDate timestamp null,
	lastPublishDate timestamp null,
	primary key (fileEntryId, ctCollectionId)
);

create table DLFileEntryMetadata (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	uuid_ varchar(75) null,
	fileEntryMetadataId bigint not null,
	companyId bigint,
	DDMStorageId bigint,
	DDMStructureId bigint,
	fileEntryId bigint,
	fileVersionId bigint,
	primary key (fileEntryMetadataId, ctCollectionId)
);

create table DLFileEntryType (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	uuid_ varchar(75) null,
	fileEntryTypeId bigint not null,
	groupId bigint,
	companyId bigint,
	userId bigint,
	userName varchar(75) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	dataDefinitionId bigint,
	fileEntryTypeKey varchar(75) null,
	name text null,
	description text null,
	scope integer,
	lastPublishDate timestamp null,
	primary key (fileEntryTypeId, ctCollectionId)
);

create table DLFileEntryTypes_DLFolders (
	companyId bigint not null,
	fileEntryTypeId bigint not null,
	folderId bigint not null,
	ctCollectionId bigint default 0 not null,
	ctChangeType bool,
	primary key (fileEntryTypeId, folderId, ctCollectionId)
);

create table DLFileShortcut (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	uuid_ varchar(75) null,
	fileShortcutId bigint not null,
	groupId bigint,
	companyId bigint,
	userId bigint,
	userName varchar(75) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	repositoryId bigint,
	folderId bigint,
	toFileEntryId bigint,
	treePath text null,
	active_ bool,
	lastPublishDate timestamp null,
	status integer,
	statusByUserId bigint,
	statusByUserName varchar(75) null,
	statusDate timestamp null,
	primary key (fileShortcutId, ctCollectionId)
);

create table DLFileVersion (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	uuid_ varchar(75) null,
	fileVersionId bigint not null,
	groupId bigint,
	companyId bigint,
	userId bigint,
	userName varchar(75) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	repositoryId bigint,
	folderId bigint,
	fileEntryId bigint,
	treePath text null,
	fileName varchar(255) null,
	extension varchar(75) null,
	mimeType varchar(75) null,
	title varchar(255) null,
	description text null,
	changeLog varchar(75) null,
	extraSettings text null,
	fileEntryTypeId bigint,
	version varchar(75) null,
	size_ bigint,
	checksum varchar(75) null,
	storeUUID varchar(255) null,
	displayDate timestamp null,
	expirationDate timestamp null,
	reviewDate timestamp null,
	lastPublishDate timestamp null,
	status integer,
	statusByUserId bigint,
	statusByUserName varchar(75) null,
	statusDate timestamp null,
	primary key (fileVersionId, ctCollectionId)
);

create table DLFolder (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	uuid_ varchar(75) null,
	externalReferenceCode varchar(75) null,
	folderId bigint not null,
	groupId bigint,
	companyId bigint,
	userId bigint,
	userName varchar(75) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	repositoryId bigint,
	mountPoint bool,
	parentFolderId bigint,
	treePath text null,
	name varchar(255) null,
	description text null,
	lastPostDate timestamp null,
	defaultFileEntryTypeId bigint,
	hidden_ bool,
	restrictionType integer,
	lastPublishDate timestamp null,
	status integer,
	statusByUserId bigint,
	statusByUserName varchar(75) null,
	statusDate timestamp null,
	primary key (folderId, ctCollectionId)
);

create table EmailAddress (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	uuid_ varchar(75) null,
	emailAddressId bigint not null,
	companyId bigint,
	userId bigint,
	userName varchar(75) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	classNameId bigint,
	classPK bigint,
	address varchar(254) null,
	listTypeId bigint,
	primary_ bool,
	primary key (emailAddressId, ctCollectionId)
);

create table ExpandoColumn (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	columnId bigint not null,
	companyId bigint,
	modifiedDate timestamp null,
	tableId bigint,
	name varchar(75) null,
	type_ integer,
	defaultData text null,
	typeSettings text null,
	primary key (columnId, ctCollectionId)
);

create table ExpandoRow (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	rowId_ bigint not null,
	companyId bigint,
	modifiedDate timestamp null,
	tableId bigint,
	classPK bigint,
	primary key (rowId_, ctCollectionId)
);

create table ExpandoTable (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	tableId bigint not null,
	companyId bigint,
	classNameId bigint,
	name varchar(75) null,
	primary key (tableId, ctCollectionId)
);

create table ExpandoValue (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	valueId bigint not null,
	companyId bigint,
	tableId bigint,
	columnId bigint,
	rowId_ bigint,
	classNameId bigint,
	classPK bigint,
	data_ text null,
	primary key (valueId, ctCollectionId)
);

create table ExportImportConfiguration (
	mvccVersion bigint default 0 not null,
	exportImportConfigurationId bigint not null primary key,
	groupId bigint,
	companyId bigint,
	userId bigint,
	userName varchar(75) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	name varchar(200) null,
	description text null,
	type_ integer,
	settings_ text null,
	status integer,
	statusByUserId bigint,
	statusByUserName varchar(75) null,
	statusDate timestamp null
);

create table Group_ (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	uuid_ varchar(75) null,
	externalReferenceCode varchar(75) null,
	groupId bigint not null,
	companyId bigint,
	creatorUserId bigint,
	modifiedDate timestamp null,
	classNameId bigint,
	classPK bigint,
	parentGroupId bigint,
	liveGroupId bigint,
	treePath text null,
	groupKey varchar(150) null,
	name text null,
	description text null,
	type_ integer,
	typeSettings text null,
	manualMembership bool,
	membershipRestriction integer,
	friendlyURL varchar(255) null,
	site bool,
	remoteStagingGroupCount integer,
	inheritContent bool,
	active_ bool,
	primary key (groupId, ctCollectionId)
);

create table Groups_Orgs (
	companyId bigint not null,
	groupId bigint not null,
	organizationId bigint not null,
	ctCollectionId bigint default 0 not null,
	ctChangeType bool,
	primary key (groupId, organizationId, ctCollectionId)
);

create table Groups_Roles (
	companyId bigint not null,
	groupId bigint not null,
	roleId bigint not null,
	ctCollectionId bigint default 0 not null,
	ctChangeType bool,
	primary key (groupId, roleId, ctCollectionId)
);

create table Groups_UserGroups (
	companyId bigint not null,
	groupId bigint not null,
	userGroupId bigint not null,
	ctCollectionId bigint default 0 not null,
	ctChangeType bool,
	primary key (groupId, userGroupId, ctCollectionId)
);

create table Image (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	imageId bigint not null,
	companyId bigint,
	modifiedDate timestamp null,
	type_ varchar(75) null,
	height integer,
	width integer,
	size_ integer,
	primary key (imageId, ctCollectionId)
);

create table Layout (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	uuid_ varchar(75) null,
	plid bigint not null,
	groupId bigint,
	companyId bigint,
	userId bigint,
	userName varchar(75) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	parentPlid bigint,
	privateLayout bool,
	layoutId bigint,
	parentLayoutId bigint,
	classNameId bigint,
	classPK bigint,
	name text null,
	title text null,
	description text null,
	keywords text null,
	robots text null,
	type_ varchar(75) null,
	typeSettings text null,
	hidden_ bool,
	system_ bool,
	friendlyURL varchar(255) null,
	iconImageId bigint,
	themeId varchar(75) null,
	colorSchemeId varchar(75) null,
	styleBookEntryId bigint,
	css text null,
	priority integer,
	faviconFileEntryId bigint,
	masterLayoutPlid bigint,
	layoutPrototypeUuid varchar(75) null,
	layoutPrototypeLinkEnabled bool,
	sourcePrototypeLayoutUuid varchar(75) null,
	publishDate timestamp null,
	lastPublishDate timestamp null,
	status integer,
	statusByUserId bigint,
	statusByUserName varchar(75) null,
	statusDate timestamp null,
	primary key (plid, ctCollectionId)
);

create table LayoutBranch (
	mvccVersion bigint default 0 not null,
	layoutBranchId bigint not null primary key,
	groupId bigint,
	companyId bigint,
	userId bigint,
	userName varchar(75) null,
	layoutSetBranchId bigint,
	plid bigint,
	name varchar(75) null,
	description text null,
	master bool
);

create table LayoutFriendlyURL (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	uuid_ varchar(75) null,
	layoutFriendlyURLId bigint not null,
	groupId bigint,
	companyId bigint,
	userId bigint,
	userName varchar(75) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	plid bigint,
	privateLayout bool,
	friendlyURL varchar(255) null,
	languageId varchar(75) null,
	lastPublishDate timestamp null,
	primary key (layoutFriendlyURLId, ctCollectionId)
);

create table LayoutPrototype (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	uuid_ varchar(75) null,
	layoutPrototypeId bigint not null,
	companyId bigint,
	userId bigint,
	userName varchar(75) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	name text null,
	description text null,
	settings_ text null,
	active_ bool,
	primary key (layoutPrototypeId, ctCollectionId)
);

create table LayoutRevision (
	mvccVersion bigint default 0 not null,
	layoutRevisionId bigint not null primary key,
	groupId bigint,
	companyId bigint,
	userId bigint,
	userName varchar(75) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	layoutSetBranchId bigint,
	layoutBranchId bigint,
	parentLayoutRevisionId bigint,
	head bool,
	major bool,
	plid bigint,
	privateLayout bool,
	name text null,
	title text null,
	description text null,
	keywords text null,
	robots text null,
	typeSettings text null,
	iconImageId bigint,
	themeId varchar(75) null,
	colorSchemeId varchar(75) null,
	css text null,
	status integer,
	statusByUserId bigint,
	statusByUserName varchar(75) null,
	statusDate timestamp null
);

create table LayoutSet (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	layoutSetId bigint not null,
	groupId bigint,
	companyId bigint,
	createDate timestamp null,
	modifiedDate timestamp null,
	privateLayout bool,
	logoId bigint,
	themeId varchar(75) null,
	colorSchemeId varchar(75) null,
	faviconFileEntryId bigint,
	css text null,
	settings_ text null,
	layoutSetPrototypeUuid varchar(75) null,
	layoutSetPrototypeLinkEnabled bool,
	primary key (layoutSetId, ctCollectionId)
);

create table LayoutSetBranch (
	mvccVersion bigint default 0 not null,
	layoutSetBranchId bigint not null primary key,
	groupId bigint,
	companyId bigint,
	userId bigint,
	userName varchar(75) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	privateLayout bool,
	name varchar(75) null,
	description text null,
	master bool,
	logoId bigint,
	themeId varchar(75) null,
	colorSchemeId varchar(75) null,
	css text null,
	settings_ text null,
	layoutSetPrototypeUuid varchar(75) null,
	layoutSetPrototypeLinkEnabled bool
);

create table LayoutSetPrototype (
	mvccVersion bigint default 0 not null,
	uuid_ varchar(75) null,
	layoutSetPrototypeId bigint not null primary key,
	companyId bigint,
	userId bigint,
	userName varchar(75) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	name text null,
	description text null,
	settings_ text null,
	active_ bool
);

create table ListType (
	mvccVersion bigint default 0 not null,
	listTypeId bigint not null primary key,
	companyId bigint,
	name varchar(75) null,
	type_ varchar(75) null
);

create table MembershipRequest (
	mvccVersion bigint default 0 not null,
	membershipRequestId bigint not null primary key,
	groupId bigint,
	companyId bigint,
	userId bigint,
	createDate timestamp null,
	comments text null,
	replyComments text null,
	replyDate timestamp null,
	replierUserId bigint,
	statusId bigint
);

create table OrgLabor (
	mvccVersion bigint default 0 not null,
	orgLaborId bigint not null primary key,
	companyId bigint,
	organizationId bigint,
	listTypeId bigint,
	sunOpen integer,
	sunClose integer,
	monOpen integer,
	monClose integer,
	tueOpen integer,
	tueClose integer,
	wedOpen integer,
	wedClose integer,
	thuOpen integer,
	thuClose integer,
	friOpen integer,
	friClose integer,
	satOpen integer,
	satClose integer
);

create table Organization_ (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	uuid_ varchar(75) null,
	externalReferenceCode varchar(75) null,
	organizationId bigint not null,
	companyId bigint,
	userId bigint,
	userName varchar(75) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	parentOrganizationId bigint,
	treePath text null,
	name varchar(100) null,
	type_ varchar(75) null,
	recursable bool,
	regionId bigint,
	countryId bigint,
	statusListTypeId bigint,
	comments text null,
	logoId bigint,
	primary key (organizationId, ctCollectionId)
);

create table PasswordPolicy (
	mvccVersion bigint default 0 not null,
	uuid_ varchar(75) null,
	passwordPolicyId bigint not null primary key,
	companyId bigint,
	userId bigint,
	userName varchar(75) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	defaultPolicy bool,
	name varchar(75) null,
	description text null,
	changeable bool,
	changeRequired bool,
	minAge bigint,
	checkSyntax bool,
	allowDictionaryWords bool,
	minAlphanumeric integer,
	minLength integer,
	minLowerCase integer,
	minNumbers integer,
	minSymbols integer,
	minUpperCase integer,
	regex text null,
	history bool,
	historyCount integer,
	expireable bool,
	maxAge bigint,
	warningTime bigint,
	graceLimit integer,
	lockout bool,
	maxFailure integer,
	lockoutDuration bigint,
	requireUnlock bool,
	resetFailureCount bigint,
	resetTicketMaxAge bigint
);

create table PasswordPolicyRel (
	mvccVersion bigint default 0 not null,
	passwordPolicyRelId bigint not null primary key,
	companyId bigint,
	passwordPolicyId bigint,
	classNameId bigint,
	classPK bigint
);

create table PasswordTracker (
	mvccVersion bigint default 0 not null,
	passwordTrackerId bigint not null primary key,
	companyId bigint,
	userId bigint,
	createDate timestamp null,
	password_ varchar(75) null
);

create table Phone (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	uuid_ varchar(75) null,
	phoneId bigint not null,
	companyId bigint,
	userId bigint,
	userName varchar(75) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	classNameId bigint,
	classPK bigint,
	number_ varchar(75) null,
	extension varchar(75) null,
	listTypeId bigint,
	primary_ bool,
	primary key (phoneId, ctCollectionId)
);

create table PluginSetting (
	mvccVersion bigint default 0 not null,
	pluginSettingId bigint not null primary key,
	companyId bigint,
	pluginId varchar(75) null,
	pluginType varchar(75) null,
	roles text null,
	active_ bool
);

create table PortalPreferenceValue (
	mvccVersion bigint default 0 not null,
	portalPreferenceValueId bigint not null primary key,
	companyId bigint,
	portalPreferencesId bigint,
	index_ integer,
	key_ varchar(255) null,
	largeValue text null,
	namespace varchar(255) null,
	smallValue varchar(255) null
);

create table PortalPreferences (
	mvccVersion bigint default 0 not null,
	portalPreferencesId bigint not null primary key,
	companyId bigint,
	ownerId bigint,
	ownerType integer
);

create table Portlet (
	mvccVersion bigint default 0 not null,
	id_ bigint not null primary key,
	companyId bigint,
	portletId varchar(200) null,
	roles text null,
	active_ bool
);

create table PortletItem (
	mvccVersion bigint default 0 not null,
	portletItemId bigint not null primary key,
	groupId bigint,
	companyId bigint,
	userId bigint,
	userName varchar(75) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	name varchar(75) null,
	portletId varchar(200) null,
	classNameId bigint
);

create table PortletPreferenceValue (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	portletPreferenceValueId bigint not null,
	companyId bigint,
	portletPreferencesId bigint,
	index_ integer,
	largeValue text null,
	name varchar(255) null,
	readOnly bool,
	smallValue varchar(255) null,
	primary key (portletPreferenceValueId, ctCollectionId)
);

create table PortletPreferences (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	portletPreferencesId bigint not null,
	companyId bigint,
	ownerId bigint,
	ownerType integer,
	plid bigint,
	portletId varchar(200) null,
	primary key (portletPreferencesId, ctCollectionId)
);

create table RatingsEntry (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	uuid_ varchar(75) null,
	entryId bigint not null,
	companyId bigint,
	userId bigint,
	userName varchar(75) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	classNameId bigint,
	classPK bigint,
	score double precision,
	primary key (entryId, ctCollectionId)
);

create table RatingsStats (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	statsId bigint not null,
	companyId bigint,
	createDate timestamp null,
	modifiedDate timestamp null,
	classNameId bigint,
	classPK bigint,
	totalEntries integer,
	totalScore double precision,
	averageScore double precision,
	primary key (statsId, ctCollectionId)
);

create table RecentLayoutBranch (
	mvccVersion bigint default 0 not null,
	recentLayoutBranchId bigint not null primary key,
	groupId bigint,
	companyId bigint,
	userId bigint,
	layoutBranchId bigint,
	layoutSetBranchId bigint,
	plid bigint
);

create table RecentLayoutRevision (
	mvccVersion bigint default 0 not null,
	recentLayoutRevisionId bigint not null primary key,
	groupId bigint,
	companyId bigint,
	userId bigint,
	layoutRevisionId bigint,
	layoutSetBranchId bigint,
	plid bigint
);

create table RecentLayoutSetBranch (
	mvccVersion bigint default 0 not null,
	recentLayoutSetBranchId bigint not null primary key,
	groupId bigint,
	companyId bigint,
	userId bigint,
	layoutSetBranchId bigint,
	layoutSetId bigint
);

create table Region (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	uuid_ varchar(75) null,
	defaultLanguageId varchar(75) null,
	regionId bigint not null,
	companyId bigint,
	userId bigint,
	userName varchar(75) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	countryId bigint,
	active_ bool,
	name varchar(75) null,
	position double precision,
	regionCode varchar(75) null,
	lastPublishDate timestamp null,
	primary key (regionId, ctCollectionId)
);

create table RegionLocalization (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	regionLocalizationId bigint not null,
	companyId bigint,
	regionId bigint,
	languageId varchar(75) null,
	title varchar(75) null,
	primary key (regionLocalizationId, ctCollectionId)
);

create table Release_ (
	mvccVersion bigint default 0 not null,
	releaseId bigint not null primary key,
	createDate timestamp null,
	modifiedDate timestamp null,
	servletContextName varchar(75) null,
	schemaVersion varchar(75) null,
	buildNumber integer,
	buildDate timestamp null,
	verified bool,
	state_ integer,
	testString varchar(1024) null
);

create table Repository (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	uuid_ varchar(75) null,
	repositoryId bigint not null,
	groupId bigint,
	companyId bigint,
	userId bigint,
	userName varchar(75) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	classNameId bigint,
	name varchar(200) null,
	description text null,
	portletId varchar(200) null,
	typeSettings text null,
	dlFolderId bigint,
	lastPublishDate timestamp null,
	primary key (repositoryId, ctCollectionId)
);

create table RepositoryEntry (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	uuid_ varchar(75) null,
	repositoryEntryId bigint not null,
	groupId bigint,
	companyId bigint,
	userId bigint,
	userName varchar(75) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	repositoryId bigint,
	mappedId varchar(255) null,
	manualCheckInRequired bool,
	lastPublishDate timestamp null,
	primary key (repositoryEntryId, ctCollectionId)
);

create table ResourceAction (
	mvccVersion bigint default 0 not null,
	resourceActionId bigint not null primary key,
	name varchar(255) null,
	actionId varchar(75) null,
	bitwiseValue bigint
);

create table ResourcePermission (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	resourcePermissionId bigint not null,
	companyId bigint,
	name varchar(255) null,
	scope integer,
	primKey varchar(255) null,
	primKeyId bigint,
	roleId bigint,
	ownerId bigint,
	actionIds bigint,
	viewActionId bool,
	primary key (resourcePermissionId, ctCollectionId)
);

create table Role_ (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	uuid_ varchar(75) null,
	roleId bigint not null,
	companyId bigint,
	userId bigint,
	userName varchar(75) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	classNameId bigint,
	classPK bigint,
	name varchar(75) null,
	title text null,
	description text null,
	type_ integer,
	subtype varchar(75) null,
	primary key (roleId, ctCollectionId)
);

create table ServiceComponent (
	mvccVersion bigint default 0 not null,
	serviceComponentId bigint not null primary key,
	buildNamespace varchar(75) null,
	buildNumber bigint,
	buildDate bigint,
	data_ text null
);

create table SocialActivity (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	activityId bigint not null,
	groupId bigint,
	companyId bigint,
	userId bigint,
	createDate bigint,
	activitySetId bigint,
	mirrorActivityId bigint,
	classNameId bigint,
	classPK bigint,
	parentClassNameId bigint,
	parentClassPK bigint,
	type_ integer,
	extraData text null,
	receiverUserId bigint,
	primary key (activityId, ctCollectionId)
);

create table SocialActivityAchievement (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	activityAchievementId bigint not null,
	groupId bigint,
	companyId bigint,
	userId bigint,
	createDate bigint,
	name varchar(75) null,
	firstInGroup bool,
	primary key (activityAchievementId, ctCollectionId)
);

create table SocialActivityCounter (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	activityCounterId bigint not null,
	groupId bigint,
	companyId bigint,
	classNameId bigint,
	classPK bigint,
	name varchar(75) null,
	ownerType integer,
	currentValue integer,
	totalValue integer,
	graceValue integer,
	startPeriod integer,
	endPeriod integer,
	active_ bool,
	primary key (activityCounterId, ctCollectionId)
);

create table SocialActivityLimit (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	activityLimitId bigint not null,
	groupId bigint,
	companyId bigint,
	userId bigint,
	classNameId bigint,
	classPK bigint,
	activityType integer,
	activityCounterName varchar(75) null,
	value varchar(75) null,
	primary key (activityLimitId, ctCollectionId)
);

create table SocialActivitySet (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	activitySetId bigint not null,
	groupId bigint,
	companyId bigint,
	userId bigint,
	createDate bigint,
	modifiedDate bigint,
	classNameId bigint,
	classPK bigint,
	type_ integer,
	extraData text null,
	activityCount integer,
	primary key (activitySetId, ctCollectionId)
);

create table SocialActivitySetting (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	activitySettingId bigint not null,
	groupId bigint,
	companyId bigint,
	classNameId bigint,
	activityType integer,
	name varchar(75) null,
	value varchar(1024) null,
	primary key (activitySettingId, ctCollectionId)
);

create table SocialRelation (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	uuid_ varchar(75) null,
	relationId bigint not null,
	companyId bigint,
	createDate bigint,
	userId1 bigint,
	userId2 bigint,
	type_ integer,
	primary key (relationId, ctCollectionId)
);

create table SocialRequest (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	uuid_ varchar(75) null,
	requestId bigint not null,
	groupId bigint,
	companyId bigint,
	userId bigint,
	createDate bigint,
	modifiedDate bigint,
	classNameId bigint,
	classPK bigint,
	type_ integer,
	extraData text null,
	receiverUserId bigint,
	status integer,
	primary key (requestId, ctCollectionId)
);

create table SystemEvent (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	systemEventId bigint not null,
	groupId bigint,
	companyId bigint,
	userId bigint,
	userName varchar(75) null,
	createDate timestamp null,
	classNameId bigint,
	classPK bigint,
	classUuid varchar(75) null,
	referrerClassNameId bigint,
	parentSystemEventId bigint,
	systemEventSetKey bigint,
	type_ integer,
	extraData text null,
	primary key (systemEventId, ctCollectionId)
);

create table Team (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	uuid_ varchar(75) null,
	teamId bigint not null,
	companyId bigint,
	userId bigint,
	userName varchar(75) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	groupId bigint,
	name varchar(75) null,
	description text null,
	lastPublishDate timestamp null,
	primary key (teamId, ctCollectionId)
);

create table Ticket (
	mvccVersion bigint default 0 not null,
	ticketId bigint not null primary key,
	companyId bigint,
	createDate timestamp null,
	classNameId bigint,
	classPK bigint,
	key_ varchar(75) null,
	type_ integer,
	extraInfo text null,
	expirationDate timestamp null
);

create table UserNotificationDelivery (
	mvccVersion bigint default 0 not null,
	userNotificationDeliveryId bigint not null primary key,
	companyId bigint,
	userId bigint,
	portletId varchar(200) null,
	classNameId bigint,
	notificationType integer,
	deliveryType integer,
	deliver bool
);

create table User_ (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	uuid_ varchar(75) null,
	externalReferenceCode varchar(75) null,
	userId bigint not null,
	companyId bigint,
	createDate timestamp null,
	modifiedDate timestamp null,
	contactId bigint,
	password_ varchar(75) null,
	passwordEncrypted bool,
	passwordReset bool,
	passwordModifiedDate timestamp null,
	digest varchar(255) null,
	reminderQueryQuestion varchar(75) null,
	reminderQueryAnswer varchar(75) null,
	graceLoginCount integer,
	screenName varchar(75) null,
	emailAddress varchar(254) null,
	facebookId bigint,
	googleUserId varchar(75) null,
	ldapServerId bigint,
	openId varchar(1024) null,
	portraitId bigint,
	languageId varchar(75) null,
	timeZoneId varchar(75) null,
	greeting varchar(255) null,
	comments text null,
	firstName varchar(75) null,
	middleName varchar(75) null,
	lastName varchar(75) null,
	jobTitle varchar(100) null,
	loginDate timestamp null,
	loginIP varchar(75) null,
	lastLoginDate timestamp null,
	lastLoginIP varchar(75) null,
	lastFailedLoginDate timestamp null,
	failedLoginAttempts integer,
	lockout bool,
	lockoutDate timestamp null,
	agreedToTermsOfUse bool,
	emailAddressVerified bool,
	type_ integer,
	status integer,
	primary key (userId, ctCollectionId)
);

create table UserGroup (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	uuid_ varchar(75) null,
	externalReferenceCode varchar(75) null,
	userGroupId bigint not null,
	companyId bigint,
	userId bigint,
	userName varchar(75) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	parentUserGroupId bigint,
	name varchar(255) null,
	description text null,
	addedByLDAPImport bool,
	primary key (userGroupId, ctCollectionId)
);

create table UserGroupGroupRole (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	userGroupGroupRoleId bigint not null,
	companyId bigint,
	userGroupId bigint,
	groupId bigint,
	roleId bigint,
	primary key (userGroupGroupRoleId, ctCollectionId)
);

create table UserGroupRole (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	userGroupRoleId bigint not null,
	companyId bigint,
	userId bigint,
	groupId bigint,
	roleId bigint,
	primary key (userGroupRoleId, ctCollectionId)
);

create table UserGroups_Teams (
	companyId bigint not null,
	teamId bigint not null,
	userGroupId bigint not null,
	ctCollectionId bigint default 0 not null,
	ctChangeType bool,
	primary key (teamId, userGroupId, ctCollectionId)
);

create table UserIdMapper (
	mvccVersion bigint default 0 not null,
	userIdMapperId bigint not null primary key,
	companyId bigint,
	userId bigint,
	type_ varchar(75) null,
	description varchar(75) null,
	externalUserId varchar(75) null
);

create table UserNotificationEvent (
	mvccVersion bigint default 0 not null,
	uuid_ varchar(75) null,
	userNotificationEventId bigint not null primary key,
	companyId bigint,
	userId bigint,
	type_ varchar(200) null,
	timestamp bigint,
	deliveryType integer,
	deliverBy bigint,
	delivered bool,
	payload text null,
	actionRequired bool,
	archived bool
);

create table Users_Groups (
	companyId bigint not null,
	groupId bigint not null,
	userId bigint not null,
	ctCollectionId bigint default 0 not null,
	ctChangeType bool,
	primary key (groupId, userId, ctCollectionId)
);

create table Users_Orgs (
	companyId bigint not null,
	organizationId bigint not null,
	userId bigint not null,
	ctCollectionId bigint default 0 not null,
	ctChangeType bool,
	primary key (organizationId, userId, ctCollectionId)
);

create table Users_Roles (
	companyId bigint not null,
	roleId bigint not null,
	userId bigint not null,
	ctCollectionId bigint default 0 not null,
	ctChangeType bool,
	primary key (roleId, userId, ctCollectionId)
);

create table Users_Teams (
	companyId bigint not null,
	teamId bigint not null,
	userId bigint not null,
	ctCollectionId bigint default 0 not null,
	ctChangeType bool,
	primary key (teamId, userId, ctCollectionId)
);

create table Users_UserGroups (
	companyId bigint not null,
	userId bigint not null,
	userGroupId bigint not null,
	ctCollectionId bigint default 0 not null,
	ctChangeType bool,
	primary key (userId, userGroupId, ctCollectionId)
);

create table UserTracker (
	mvccVersion bigint default 0 not null,
	userTrackerId bigint not null primary key,
	companyId bigint,
	userId bigint,
	modifiedDate timestamp null,
	sessionId varchar(200) null,
	remoteAddr varchar(75) null,
	remoteHost varchar(75) null,
	userAgent varchar(200) null
);

create table UserTrackerPath (
	mvccVersion bigint default 0 not null,
	userTrackerPathId bigint not null primary key,
	companyId bigint,
	userTrackerId bigint,
	path_ text null,
	pathDate timestamp null
);

create table VirtualHost (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	virtualHostId bigint not null,
	companyId bigint,
	layoutSetId bigint,
	hostname varchar(200) null,
	defaultVirtualHost bool,
	languageId varchar(75) null,
	primary key (virtualHostId, ctCollectionId)
);

create table WebDAVProps (
	mvccVersion bigint default 0 not null,
	webDavPropsId bigint not null primary key,
	companyId bigint,
	createDate timestamp null,
	modifiedDate timestamp null,
	classNameId bigint,
	classPK bigint,
	props text null
);

create table Website (
	mvccVersion bigint default 0 not null,
	uuid_ varchar(75) null,
	websiteId bigint not null primary key,
	companyId bigint,
	userId bigint,
	userName varchar(75) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	classNameId bigint,
	classPK bigint,
	url text null,
	listTypeId bigint,
	primary_ bool,
	lastPublishDate timestamp null
);

create table WorkflowDefinitionLink (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	workflowDefinitionLinkId bigint not null,
	groupId bigint,
	companyId bigint,
	userId bigint,
	userName varchar(75) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	classNameId bigint,
	classPK bigint,
	typePK bigint,
	workflowDefinitionName varchar(75) null,
	workflowDefinitionVersion integer,
	primary key (workflowDefinitionLinkId, ctCollectionId)
);

create table WorkflowInstanceLink (
	mvccVersion bigint default 0 not null,
	ctCollectionId bigint default 0 not null,
	workflowInstanceLinkId bigint not null,
	groupId bigint,
	companyId bigint,
	userId bigint,
	userName varchar(75) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	classNameId bigint,
	classPK bigint,
	workflowInstanceId bigint,
	primary key (workflowInstanceLinkId, ctCollectionId)
);


insert into Counter (name, currentId) values ('com.liferay.counter.kernel.model.Counter', 20000);



commit;


create index IX_FEAFC68A on Address (companyId, classNameId, classPK, listTypeId);
create index IX_923BD178 on Address (companyId, classNameId, classPK, mailing);
create index IX_9226DBB4 on Address (companyId, classNameId, classPK, primary_);
create index IX_5A2093E7 on Address (countryId);
create index IX_F5B50D63 on Address (externalReferenceCode);
create index IX_C8E3E87D on Address (regionId);
create index IX_5BC8B0D4 on Address (userId);
create index IX_381E55DA on Address (uuid_);

create index IX_37B0A8A2 on AnnouncementsDelivery (companyId);
create unique index IX_BA4413D5 on AnnouncementsDelivery (userId, type_);

create index IX_14F06A6B on AnnouncementsEntry (classNameId, classPK, alert);
create index IX_94C04525 on AnnouncementsEntry (classNameId, classPK, companyId, alert);
create index IX_3F376E7C on AnnouncementsEntry (companyId);
create index IX_D49C2E66 on AnnouncementsEntry (userId);
create index IX_1AFBDE08 on AnnouncementsEntry (uuid_);

create index IX_EF1F022A on AnnouncementsFlag (companyId);
create index IX_ED8CE4E8 on AnnouncementsFlag (entryId, userId, value);

create index IX_B69B6689 on AssetCategory (externalReferenceCode);
create index IX_E639E2F6 on AssetCategory (groupId);
create index IX_24187A9F on AssetCategory (parentCategoryId, groupId);
create index IX_9DDD15EA on AssetCategory (parentCategoryId, name);
create index IX_4D37BB00 on AssetCategory (uuid_);
create index IX_962EDA40 on AssetCategory (vocabularyId, groupId, name);
create index IX_3537E488 on AssetCategory (vocabularyId, name);
create index IX_3334FA2A on AssetCategory (vocabularyId, parentCategoryId, groupId);
create unique index IX_8C99329D on AssetCategory (vocabularyId, parentCategoryId, name, ctCollectionId);

create index IX_112337B8 on AssetEntries_AssetTags (companyId);
create index IX_B2A61B55 on AssetEntries_AssetTags (tagId);

create unique index IX_7BF8337B on AssetEntry (classNameId, classPK, ctCollectionId);
create index IX_7306C60 on AssetEntry (companyId);
create index IX_75D42FF9 on AssetEntry (expirationDate);
create index IX_6418BB52 on AssetEntry (groupId, classNameId, publishDate, expirationDate);
create index IX_82C4BEF6 on AssetEntry (groupId, classNameId, visible);
create index IX_1EBA6821 on AssetEntry (groupId, classUuid);
create index IX_FEC4A201 on AssetEntry (layoutUuid);
create index IX_2E4E3885 on AssetEntry (publishDate);
create index IX_9029E15A on AssetEntry (visible);

create index IX_CAF671DB on AssetTag (name, groupId);
create index IX_562A3FC4 on AssetTag (uuid_);

create index IX_B22D908C on AssetVocabulary (companyId);
create index IX_3C0C03A1 on AssetVocabulary (externalReferenceCode);
create unique index IX_AE9F73AB on AssetVocabulary (groupId, name, ctCollectionId);
create index IX_2F7F11EE on AssetVocabulary (groupId, visibilityType);
create index IX_55F58818 on AssetVocabulary (uuid_);

create unique index IX_E7B95510 on BrowserTracker (userId);

create unique index IX_B27A301F on ClassName_ (value);

create index IX_38EFE3FD on Company (logoId);
create index IX_12566EC2 on Company (mx);
create unique index IX_EC00543C on Company (webId);

create unique index IX_85C63FD7 on CompanyInfo (companyId);

create index IX_791914FA on Contact_ (classNameId, classPK);
create index IX_CE3F0B29 on Contact_ (userId, companyId);

create index IX_25D734CD on Country (active_);
create index IX_F9CD867E on Country (companyId, active_, billingAllowed);
create index IX_54E98CCD on Country (companyId, active_, shippingAllowed);
create unique index IX_7DA11A6F on Country (companyId, ctCollectionId, a2);
create unique index IX_7DA11E30 on Country (companyId, ctCollectionId, a3);
create unique index IX_B2A91789 on Country (companyId, ctCollectionId, name);
create unique index IX_74AB3DC on Country (companyId, ctCollectionId, number_);
create index IX_B59A9078 on Country (uuid_);

create unique index IX_E22A5911 on CountryLocalization (countryId, languageId, ctCollectionId);

create index IX_4CB1B2B4 on DLFileEntry (companyId);
create index IX_E68FC539 on DLFileEntry (custom2ImageId, custom1ImageId, largeImageId, smallImageId);
create index IX_DBE629C9 on DLFileEntry (externalReferenceCode);
create index IX_772ECDE7 on DLFileEntry (fileEntryTypeId);
create unique index IX_24247FF2 on DLFileEntry (folderId, groupId, ctCollectionId, fileName);
create unique index IX_CAEFBFD6 on DLFileEntry (folderId, groupId, ctCollectionId, name);
create unique index IX_DE7B15D1 on DLFileEntry (folderId, groupId, ctCollectionId, title);
create index IX_F6E5E082 on DLFileEntry (folderId, groupId, fileEntryTypeId);
create index IX_E469833 on DLFileEntry (folderId, groupId, userId);
create index IX_8F6C75D0 on DLFileEntry (folderId, name);
create index IX_57FFBBCA on DLFileEntry (folderId, repositoryId);
create index IX_43261870 on DLFileEntry (groupId, userId);
create index IX_D9492CF6 on DLFileEntry (mimeType);
create index IX_9EE96CAD on DLFileEntry (repositoryId);
create index IX_64F0FE40 on DLFileEntry (uuid_);

create index IX_4F40FE5E on DLFileEntryMetadata (fileEntryId);
create unique index IX_5DC2B977 on DLFileEntryMetadata (fileVersionId, DDMStructureId, ctCollectionId);
create index IX_D49AB5D1 on DLFileEntryMetadata (uuid_);

create unique index IX_93ED0F06 on DLFileEntryType (groupId, ctCollectionId, dataDefinitionId);
create unique index IX_A5C4723D on DLFileEntryType (groupId, ctCollectionId, fileEntryTypeKey);
create index IX_90724726 on DLFileEntryType (uuid_);

create index IX_2E64D9F9 on DLFileEntryTypes_DLFolders (companyId);
create index IX_6E00A2EC on DLFileEntryTypes_DLFolders (folderId);

create index IX_4F6F93B2 on DLFileShortcut (status, companyId);
create index IX_71D97D98 on DLFileShortcut (status, groupId, folderId, active_);
create index IX_4B7247F6 on DLFileShortcut (toFileEntryId);
create index IX_4831EBE4 on DLFileShortcut (uuid_);

create index IX_CF394FE on DLFileVersion (companyId, storeUUID);
create unique index IX_10E504DF on DLFileVersion (fileEntryId, version, ctCollectionId);
create index IX_BC5541ED on DLFileVersion (groupId, folderId, version, title);
create index IX_FFB3395C on DLFileVersion (mimeType);
create index IX_6AA08268 on DLFileVersion (status, companyId);
create index IX_92309600 on DLFileVersion (status, displayDate);
create index IX_D50EAA41 on DLFileVersion (status, fileEntryId);
create index IX_799D5D47 on DLFileVersion (status, groupId, folderId);
create index IX_4BFABB9A on DLFileVersion (uuid_);

create index IX_A74DB14C on DLFolder (companyId);
create index IX_C4410461 on DLFolder (externalReferenceCode);
create index IX_F2EA1ACE on DLFolder (groupId);
create unique index IX_E8CB41E4 on DLFolder (parentFolderId, groupId, name, ctCollectionId);
create index IX_71D88798 on DLFolder (parentFolderId, groupId, status, hidden_);
create index IX_D97721CD on DLFolder (parentFolderId, groupId, status, mountPoint, hidden_);
create index IX_51556082 on DLFolder (parentFolderId, name);
create index IX_56F3D47C on DLFolder (parentFolderId, repositoryId);
create index IX_6F63F140 on DLFolder (repositoryId, mountPoint);
create index IX_B199E2A6 on DLFolder (status, companyId);
create index IX_CBC408D8 on DLFolder (uuid_);

create index IX_2A2CB130 on EmailAddress (companyId, classNameId, classPK, primary_);
create index IX_7B43CD8 on EmailAddress (userId);
create index IX_D24F3956 on EmailAddress (uuid_);

create unique index IX_4A7D3605 on ExpandoColumn (tableId, name, ctCollectionId);

create unique index IX_F1A1F8BF on ExpandoRow (classPK, tableId, ctCollectionId);

create unique index IX_87D370E2 on ExpandoTable (companyId, classNameId, name, ctCollectionId);

create index IX_CAD04B0D on ExpandoValue (classPK, classNameId);
create unique index IX_F7AD05C3 on ExpandoValue (rowId_, columnId, ctCollectionId);
create unique index IX_DB301E6F on ExpandoValue (tableId, classPK, columnId, ctCollectionId);
create index IX_B71E92D5 on ExpandoValue (tableId, rowId_);

create index IX_1827A2E5 on ExportImportConfiguration (companyId);
create index IX_F8451AA8 on ExportImportConfiguration (groupId, status, type_);

create index IX_75017452 on Group_ (active_, type_);
create index IX_8257E37B on Group_ (classNameId, classPK);
create index IX_DDC91A87 on Group_ (companyId, active_);
create unique index IX_DBA56EF9 on Group_ (companyId, classNameId, ctCollectionId, classPK);
create index IX_ABE2D54 on Group_ (companyId, classNameId, parentGroupId);
create index IX_DF76A247 on Group_ (companyId, classNameId, site);
create unique index IX_3551EED4 on Group_ (companyId, ctCollectionId, friendlyURL);
create unique index IX_42E6E774 on Group_ (companyId, ctCollectionId, groupKey);
create index IX_5D75499E on Group_ (companyId, parentGroupId);
create index IX_B91488EC on Group_ (companyId, site, active_);
create index IX_7B216735 on Group_ (companyId, site, parentGroupId, inheritContent);
create index IX_CCBAA0D7 on Group_ (externalReferenceCode);
create index IX_16218A38 on Group_ (liveGroupId);
create index IX_F981514E on Group_ (uuid_);

create index IX_8BFD4548 on Groups_Orgs (companyId);
create index IX_6BBB7682 on Groups_Orgs (organizationId);

create index IX_557D8550 on Groups_Roles (companyId);
create index IX_3103EF3D on Groups_Roles (roleId);

create index IX_676FC818 on Groups_UserGroups (companyId);
create index IX_3B69160F on Groups_UserGroups (userGroupId);

create index IX_6A925A4D on Image (size_);

create index IX_B8E1E6E5 on Layout (classNameId, classPK);
create index IX_993CBA31 on Layout (groupId, masterLayoutPlid);
create unique index IX_502B1A93 on Layout (groupId, privateLayout, ctCollectionId, friendlyURL);
create unique index IX_4FBF955A on Layout (groupId, privateLayout, ctCollectionId, layoutId);
create index IX_7DAA999F on Layout (groupId, privateLayout, parentLayoutId, hidden_);
create index IX_7399B71E on Layout (groupId, privateLayout, parentLayoutId, priority);
create index IX_8F78BAFA on Layout (groupId, privateLayout, parentLayoutId, system_);
create index IX_8CE8C0D9 on Layout (groupId, privateLayout, sourcePrototypeLayoutUuid);
create index IX_A0364689 on Layout (groupId, privateLayout, status);
create index IX_1A1B61D2 on Layout (groupId, privateLayout, type_);
create index IX_6EDC627B on Layout (groupId, type_);
create index IX_23922F7D on Layout (iconImageId);
create index IX_667E3275 on Layout (layoutPrototypeUuid, companyId);
create index IX_1D4DCAA5 on Layout (parentPlid);
create index IX_3BC009C0 on Layout (privateLayout, iconImageId);
create index IX_39A18ECC on Layout (sourcePrototypeLayoutUuid);
create index IX_D0822724 on Layout (uuid_);

create index IX_B7546EDE on LayoutBranch (plid, layoutSetBranchId, master);
create unique index IX_6C2CC347 on LayoutBranch (plid, layoutSetBranchId, name);

create index IX_EAB317C8 on LayoutFriendlyURL (companyId);
create index IX_C23A9814 on LayoutFriendlyURL (friendlyURL, companyId);
create unique index IX_7B314B62 on LayoutFriendlyURL (friendlyURL, groupId, languageId, ctCollectionId, privateLayout);
create index IX_D3B2D6DF on LayoutFriendlyURL (friendlyURL, plid);
create index IX_742EF04A on LayoutFriendlyURL (groupId);
create unique index IX_2069E0D0 on LayoutFriendlyURL (plid, languageId, ctCollectionId);
create index IX_9F80D54 on LayoutFriendlyURL (uuid_);

create index IX_557A639F on LayoutPrototype (companyId, active_);
create index IX_CEF72136 on LayoutPrototype (uuid_);

create index IX_3681C8D4 on LayoutRevision (layoutSetBranchId, status, head);
create index IX_27F4B32A on LayoutRevision (plid, head);
create index IX_DFD8E21E on LayoutRevision (plid, layoutSetBranchId, head, layoutBranchId);
create index IX_EE9E078A on LayoutRevision (plid, layoutSetBranchId, layoutBranchId);
create index IX_A5E8F80D on LayoutRevision (plid, layoutSetBranchId, parentLayoutRevisionId);
create index IX_81290E15 on LayoutRevision (plid, layoutSetBranchId, status);
create index IX_8EC3D2BC on LayoutRevision (plid, status);
create index IX_421223B1 on LayoutRevision (status);

create index IX_C629311 on LayoutSet (layoutSetPrototypeUuid, companyId);
create unique index IX_3486D629 on LayoutSet (privateLayout, groupId, ctCollectionId);
create index IX_1B698D9 on LayoutSet (privateLayout, logoId);

create index IX_CCF0DA29 on LayoutSetBranch (groupId, privateLayout, master);
create unique index IX_5FF18552 on LayoutSetBranch (groupId, privateLayout, name);

create index IX_9178FC71 on LayoutSetPrototype (companyId, active_);
create index IX_C5D69B24 on LayoutSetPrototype (uuid_);

create unique index IX_BF6DBF8A on ListType (companyId, type_, name);

create index IX_C28C72EC on MembershipRequest (groupId, statusId);
create index IX_35AA8FA6 on MembershipRequest (groupId, userId, statusId);
create index IX_66D70879 on MembershipRequest (userId);

create index IX_6AF0D434 on OrgLabor (organizationId);

create unique index IX_F1E40A53 on Organization_ (companyId, name, ctCollectionId);
create index IX_4BCBAB21 on Organization_ (companyId, name, parentOrganizationId);
create index IX_418E4522 on Organization_ (companyId, parentOrganizationId);
create index IX_2D3C52CB on Organization_ (externalReferenceCode);
create index IX_396D6B42 on Organization_ (uuid_);

create index IX_2C1142E on PasswordPolicy (companyId, defaultPolicy);
create unique index IX_3FBFA9F4 on PasswordPolicy (companyId, name);
create index IX_51437A01 on PasswordPolicy (uuid_);

create unique index IX_C3A17327 on PasswordPolicyRel (classNameId, classPK);
create index IX_CD25266E on PasswordPolicyRel (passwordPolicyId);

create index IX_326F75BD on PasswordTracker (userId);

create index IX_812CE07A on Phone (companyId, classNameId, classPK, primary_);
create index IX_F202B9CE on Phone (userId);
create index IX_EA6245A0 on Phone (uuid_);

create unique index IX_7171B2E8 on PluginSetting (companyId, pluginId, pluginType);

create unique index IX_D5E35599 on PortalPreferenceValue (portalPreferencesId, namespace, key_, index_);
create index IX_737DBC36 on PortalPreferenceValue (portalPreferencesId, namespace, key_, smallValue);

create index IX_D1846D13 on PortalPreferences (ownerType, ownerId);

create unique index IX_12B5E51D on Portlet (companyId, portletId);

create index IX_C6246ECD on PortletItem (groupId, classNameId, portletId, name);

create unique index IX_A2EB0CCD on PortletPreferenceValue (name, portletPreferencesId, index_, ctCollectionId);
create index IX_91A4000C on PortletPreferenceValue (name, portletPreferencesId, smallValue);
create index IX_EE8C5489 on PortletPreferenceValue (name, smallValue, companyId);

create index IX_69948606 on PortletPreferences (ownerId, ownerType, portletId, companyId);
create unique index IX_3BB8560B on PortletPreferences (ownerId, ownerType, portletId, plid, ctCollectionId);

create index IX_A1A8CB8B on RatingsEntry (classNameId, classPK, score);
create unique index IX_119FF2EF on RatingsEntry (classNameId, classPK, userId, ctCollectionId);
create index IX_C34DEAF2 on RatingsEntry (uuid_);

create unique index IX_C286E0E2 on RatingsStats (classNameId, classPK, ctCollectionId);

create index IX_B91F79BD on RecentLayoutBranch (groupId);
create index IX_351E86E8 on RecentLayoutBranch (layoutBranchId);
create unique index IX_C27D6369 on RecentLayoutBranch (userId, layoutSetBranchId, plid);

create index IX_8D8A2724 on RecentLayoutRevision (groupId);
create index IX_DA0788DA on RecentLayoutRevision (layoutRevisionId);
create unique index IX_4C600BD0 on RecentLayoutRevision (userId, layoutSetBranchId, plid);

create index IX_711995A5 on RecentLayoutSetBranch (groupId);
create index IX_23FF0700 on RecentLayoutSetBranch (layoutSetBranchId);
create unique index IX_4654D204 on RecentLayoutSetBranch (userId, layoutSetId);

create index IX_2D9A426F on Region (active_);
create index IX_11FB3E42 on Region (countryId, active_);
create unique index IX_183BFDBA on Region (countryId, regionCode, ctCollectionId);
create index IX_48A89E9A on Region (uuid_);

create unique index IX_982329B on RegionLocalization (regionId, languageId, ctCollectionId);

create unique index IX_8BD6BCA7 on Release_ (servletContextName);

create unique index IX_97B21AA on Repository (groupId, name, portletId, ctCollectionId);
create index IX_74C17B04 on Repository (uuid_);

create unique index IX_BC798E7 on RepositoryEntry (repositoryId, mappedId, ctCollectionId);
create index IX_B9B1506 on RepositoryEntry (uuid_);

create unique index IX_EDB9986E on ResourceAction (name, actionId);

create index IX_26284944 on ResourcePermission (companyId, primKey);
create unique index IX_F2237D8E on ResourcePermission (companyId, scope, name, primKey, roleId, ctCollectionId);
create index IX_FA3E7EEB on ResourcePermission (companyId, scope, name, roleId, primKeyId, viewActionId);
create index IX_F6BAE86A on ResourcePermission (companyId, scope, primKey);
create index IX_D5F1E2A2 on ResourcePermission (name);
create index IX_A37A0588 on ResourcePermission (roleId);
create index IX_F4555981 on ResourcePermission (scope);

create unique index IX_CC85CC2C on Role_ (companyId, ctCollectionId, classNameId, classPK);
create unique index IX_D11C3796 on Role_ (companyId, ctCollectionId, name);
create index IX_F436EC8E on Role_ (name);
create index IX_A764467A on Role_ (subtype, type_);
create index IX_26DB26C5 on Role_ (uuid_);

create unique index IX_4F0315B8 on ServiceComponent (buildNamespace, buildNumber);

create index IX_F542E9BC on SocialActivity (activitySetId);
create unique index IX_7E6A9AAD on SocialActivity (classNameId, classPK, groupId, userId, type_, receiverUserId, ctCollectionId, createDate);
create index IX_85370BF4 on SocialActivity (classNameId, classPK, mirrorActivityId);
create index IX_D0E9029E on SocialActivity (classNameId, classPK, type_);
create index IX_64B1BC66 on SocialActivity (companyId);
create index IX_2A2468 on SocialActivity (groupId);
create index IX_1271F25F on SocialActivity (mirrorActivityId);
create index IX_121CA3CB on SocialActivity (receiverUserId);
create index IX_3504B8BC on SocialActivity (userId);

create index IX_83E16F2F on SocialActivityAchievement (groupId, firstInGroup);
create index IX_8F6408F0 on SocialActivityAchievement (groupId, name);
create index IX_AABC18E9 on SocialActivityAchievement (groupId, userId, firstInGroup);
create unique index IX_5ED94F08 on SocialActivityAchievement (groupId, userId, name, ctCollectionId);

create unique index IX_E8A327E1 on SocialActivityCounter (classNameId, classPK, groupId, ownerType, name, ctCollectionId, endPeriod);
create unique index IX_4EE6EBA8 on SocialActivityCounter (classNameId, classPK, groupId, ownerType, name, ctCollectionId, startPeriod);

create unique index IX_12DA9D73 on SocialActivityLimit (classNameId, classPK, userId, groupId, activityType, activityCounterName, ctCollectionId);

create index IX_9E13F2DE on SocialActivitySet (groupId);
create index IX_5D1FA9E on SocialActivitySet (type_, classNameId, classPK);
create index IX_5B258A4 on SocialActivitySet (type_, classNameId, userId, classPK);
create index IX_ADDEF96B on SocialActivitySet (type_, classNameId, userId, groupId);

create index IX_25EEB8A0 on SocialActivitySetting (groupId, activityType, classNameId, name);

create index IX_61171E99 on SocialRelation (companyId);
create index IX_5E1F07A2 on SocialRelation (type_, companyId);
create unique index IX_C31248D1 on SocialRelation (userId2, type_, userId1, ctCollectionId);
create index IX_BD7B682E on SocialRelation (userId2, userId1);
create index IX_F0CA24A5 on SocialRelation (uuid_);

create unique index IX_30B64F87 on SocialRequest (classNameId, classPK, receiverUserId, type_, userId, ctCollectionId);
create index IX_A90FE5A0 on SocialRequest (companyId);
create index IX_3B45B8C9 on SocialRequest (status, classNameId, classPK, receiverUserId, type_);
create index IX_BBBDD26C on SocialRequest (status, classNameId, classPK, type_, userId);
create index IX_6ECAD9B7 on SocialRequest (status, receiverUserId);
create index IX_49D5872C on SocialRequest (uuid_);

create index IX_FFCBB747 on SystemEvent (groupId, classNameId, classPK, type_);
create index IX_A19C89FF on SystemEvent (groupId, systemEventSetKey);

create index IX_93AB8545 on Team (companyId);
create unique index IX_D424D1E4 on Team (groupId, name, ctCollectionId);
create index IX_7894C151 on Team (uuid_);

create index IX_A3DCE03A on Ticket (classNameId, classPK, type_, companyId);
create index IX_B2468446 on Ticket (key_);

create unique index IX_3F4FC96B on UserGroup (companyId, name, ctCollectionId);
create index IX_69771487 on UserGroup (companyId, parentUserGroupId);
create index IX_D65F8FE3 on UserGroup (externalReferenceCode);
create index IX_5F1DD85A on UserGroup (uuid_);

create unique index IX_A353F8EB on UserGroupGroupRole (userGroupId, roleId, groupId, ctCollectionId);

create unique index IX_E7D4B319 on UserGroupRole (userId, roleId, groupId, ctCollectionId);

create index IX_2AC5356C on UserGroups_Teams (companyId);
create index IX_7F187E63 on UserGroups_Teams (userGroupId);

create unique index IX_41A32E0D on UserIdMapper (type_, externalUserId);
create unique index IX_2DE52B22 on UserIdMapper (type_, userId);

create unique index IX_8B6E3ACE on UserNotificationDelivery (userId, portletId, classNameId, notificationType, deliveryType);

create index IX_BF29100B on UserNotificationEvent (type_);
create index IX_3BE9B7B1 on UserNotificationEvent (userId, delivered, deliveryType, archived, actionRequired);
create index IX_D8C49479 on UserNotificationEvent (userId, delivered, deliveryType, type_, archived);
create index IX_EBF87241 on UserNotificationEvent (userId, delivered, type_, timestamp);
create index IX_D60FB085 on UserNotificationEvent (userId, deliveryType, archived, actionRequired);
create index IX_ECD8CFEA on UserNotificationEvent (uuid_);

create index IX_29BA1CF5 on UserTracker (companyId);
create index IX_46B0AE8E on UserTracker (sessionId);
create index IX_E4EFBA8D on UserTracker (userId);

create index IX_14D8BCC0 on UserTrackerPath (userTrackerId);

create index IX_BCFDA257 on User_ (companyId, createDate, modifiedDate);
create unique index IX_77D89D58 on User_ (companyId, ctCollectionId, emailAddress);
create unique index IX_6B7C3D77 on User_ (companyId, ctCollectionId, screenName);
create index IX_1D731F03 on User_ (companyId, facebookId);
create index IX_B6E3AE1 on User_ (companyId, googleUserId);
create index IX_EE8ABD19 on User_ (companyId, modifiedDate);
create index IX_89509087 on User_ (companyId, left(openId, 676));
create index IX_AD7F7321 on User_ (companyId, status, type_);
create unique index IX_E902F853 on User_ (ctCollectionId, contactId);
create index IX_762F63C6 on User_ (emailAddress);
create index IX_F76CE363 on User_ (externalReferenceCode);
create index IX_A18034A4 on User_ (portraitId);
create index IX_E0422BDA on User_ (uuid_);

create index IX_3499B657 on Users_Groups (companyId);
create index IX_F10B6C6B on Users_Groups (userId);

create index IX_5FBB883C on Users_Orgs (companyId);
create index IX_FB646CA6 on Users_Orgs (userId);

create index IX_F987A0DC on Users_Roles (companyId);
create index IX_C1A01806 on Users_Roles (userId);

create index IX_799F8283 on Users_Teams (companyId);
create index IX_A098EFBF on Users_Teams (userId);

create index IX_BB65040C on Users_UserGroups (companyId);
create index IX_66FF2503 on Users_UserGroups (userGroupId);

create unique index IX_76A64FBE on VirtualHost (hostname, ctCollectionId);
create index IX_4F1AD744 on VirtualHost (layoutSetId, companyId, defaultVirtualHost);
create index IX_774643D1 on VirtualHost (layoutSetId, hostname);

create unique index IX_97DFA146 on WebDAVProps (classNameId, classPK);

create index IX_1AA07A6D on Website (companyId, classNameId, classPK, primary_);
create index IX_F75690BB on Website (userId);
create index IX_76F15D13 on Website (uuid_);

create index IX_A0B53428 on WorkflowDefinitionLink (companyId, groupId, classPK, classNameId, typePK);
create index IX_A4DB1F0F on WorkflowDefinitionLink (companyId, workflowDefinitionName, workflowDefinitionVersion);

create index IX_415A7007 on WorkflowInstanceLink (groupId, companyId, classNameId, classPK);



