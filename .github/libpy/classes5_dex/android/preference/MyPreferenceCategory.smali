.class public Landroid/preference/MyPreferenceCategory;
.super Landroid/preference/PreferenceCategory;
.source "MyPreferenceCategory.java"


# instance fields
.field private mMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x0

    const-string v0, "margin"

    invoke-interface {p2, v1, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/preference/MyPreferenceCategory;->mMargin:I

    return-void
.end method

.method private setMargin(Landroid/view/View;)V
    .registers 6

    invoke-virtual {p0}, Landroid/preference/MyPreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "title"

    const-string v2, "id"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_24

    const-string v1, "summary"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_30

    :cond_24
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget v2, p0, Landroid/preference/MyPreferenceCategory;->mMargin:I

    const v3, 0x2f

    mul-int/2addr v2, v3

    :cond_30
    return-void
.end method


# virtual methods
.method protected onAttachedToActivity()V
    .registers 3

    invoke-virtual {p0}, Landroid/preference/Preference;->getDependency()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    instance-of v1, v0, Landroid/preference/MyCheckBoxPreference;

    if-eqz v1, :cond_1b

    check-cast v0, Landroid/preference/MyCheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/MyCheckBoxPreference;->registerDependent(Landroid/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_28

    return-void

    :cond_1b
    instance-of v1, v0, Landroid/preference/MyListPreference;

    if-eqz v1, :cond_28

    check-cast v0, Landroid/preference/MyListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/MyListPreference;->registerDependent(Landroid/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_28

    return-void

    :cond_28
    invoke-super {p0}, Landroid/preference/Preference;->onAttachedToActivity()V

    return-void
.end method

.method public onBindView(Landroid/view/View;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    return-void
.end method
