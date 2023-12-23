.class public Landroid/preference/MyCheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "MyCheckBoxPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeInternalListener;


# instance fields
.field private dependentsHide:Z

.field private disableKeyIntent:Z

.field private h:I

.field private mArrowColor:I

.field private mMyPreference:Landroid/preference/MyPreference;

.field private mParentView:Landroid/view/View;

.field private myDependents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private position:I

.field private w:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/preference/MyCheckBoxPreference;->mParentView:Landroid/view/View;

    const-string v0, "disableKeyIntent"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_18
    iput-boolean v1, p0, Landroid/preference/MyCheckBoxPreference;->disableKeyIntent:Z

    const-string v0, "dependentsHide"

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_2d
    iput-boolean v1, p0, Landroid/preference/MyCheckBoxPreference;->dependentsHide:Z

    if-eqz v1, :cond_71

    invoke-virtual {p0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeInternalListener(Landroid/preference/Preference$OnPreferenceChangeInternalListener;)V

    const/4 v1, 0x0

    const-string v0, "arrowPos"

    invoke-interface {p2, v1, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/preference/MyCheckBoxPreference;->position:I

    const-string v0, "arrowX"

    invoke-interface {p2, v1, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/preference/MyCheckBoxPreference;->x:I

    const-string v0, "arrowY"

    invoke-interface {p2, v1, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/preference/MyCheckBoxPreference;->y:I

    const v2, 0x16

    const-string v0, "arrowWidth"

    invoke-interface {p2, v1, v0, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/preference/MyCheckBoxPreference;->w:I

    const v2, 0x12

    const-string v0, "arrowHeight"

    invoke-interface {p2, v1, v0, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/preference/MyCheckBoxPreference;->h:I

    const-string v0, "arrowColor"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6f

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    :cond_6f
    iput v1, p0, Landroid/preference/MyCheckBoxPreference;->mArrowColor:I

    :cond_71
    new-instance v0, Landroid/preference/MyPreference;

    invoke-direct {v0, p1, p2}, Landroid/preference/MyPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Landroid/preference/MyCheckBoxPreference;->mMyPreference:Landroid/preference/MyPreference;

    return-void
.end method

.method private addRemoveAllDependents(Z)V
    .registers 7

    iget-object v0, p0, Landroid/preference/MyCheckBoxPreference;->myDependents:Ljava/util/List;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/preference/MyCheckBoxPreference;->updateExpandButton(Z)V

    :goto_d
    if-ge v2, v1, :cond_4b

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Landroid/preference/MyListPreference;

    if-eqz v4, :cond_2d

    check-cast v3, Landroid/preference/MyListPreference;

    invoke-virtual {v3}, Landroid/preference/MyListPreference;->hasDependentsHide()Z

    move-result v4

    if-eqz v4, :cond_2d

    if-eqz p1, :cond_26

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/preference/MyListPreference;->forceAddRemoveAllDependents(Z)V

    goto :goto_2d

    :cond_26
    invoke-virtual {v3}, Landroid/preference/MyListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v3, v4}, Landroid/preference/MyListPreference;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    :cond_2d
    :goto_2d
    instance-of v4, v3, Landroid/preference/MyCheckBoxPreference;

    if-eqz v4, :cond_43

    check-cast v3, Landroid/preference/MyCheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/MyCheckBoxPreference;->hasDependentsHide()Z

    move-result v4

    if-eqz v4, :cond_43

    if-eqz p1, :cond_40

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/preference/MyCheckBoxPreference;->forceAddRemoveAllDependents(Z)V

    goto :goto_43

    :cond_40
    invoke-virtual {v3, v3}, Landroid/preference/MyCheckBoxPreference;->onPreferenceChange(Landroid/preference/Preference;)V

    :cond_43
    :goto_43
    check-cast v3, Landroid/preference/Preference;

    invoke-direct {p0, v3, p1}, Landroid/preference/MyCheckBoxPreference;->addRemoveDependent(Landroid/preference/Preference;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_4b
    return-void
.end method

.method private addRemoveDependent(Landroid/preference/Preference;Z)V
    .registers 5

    if-eqz p1, :cond_1f

    invoke-direct {p0, p0}, Landroid/preference/MyCheckBoxPreference;->getParent(Landroid/preference/Preference;)Landroid/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz p2, :cond_1a

    if-eqz v1, :cond_1f

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1f

    :cond_1a
    if-nez v1, :cond_1f

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_1f
    :goto_1f
    return-void
.end method

.method private createColorStateList(II)Landroid/content/res/ColorStateList;
    .registers 9

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v5, [[I

    new-array v1, v4, [I

    sget v2, Lcom/android/internal/R$attr;->state_enabled:I

    aput v2, v1, v3

    aput-object v1, v0, v3

    new-array v1, v4, [I

    mul-int/lit8 v2, v2, -0x1

    aput v2, v1, v3

    aput-object v1, v0, v4

    new-array v1, v5, [I

    aput p1, v1, v3

    aput p2, v1, v4

    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private getParent(Landroid/preference/Preference;)Landroid/preference/PreferenceGroup;
    .registers 4

    const/4 v1, 0x0

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Landroid/preference/MyCheckBoxPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-direct {p0, v0, p1}, Landroid/preference/MyCheckBoxPreference;->getParent(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Landroid/preference/PreferenceGroup;

    move-result-object v1

    :cond_13
    return-object v1
.end method

.method private getParent(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Landroid/preference/PreferenceGroup;
    .registers 7

    const/4 v3, 0x0

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-ge v1, v0, :cond_25

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    if-ne v0, p2, :cond_10

    return-object p1

    :cond_10
    const-class v2, Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    check-cast v0, Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v0, p2}, Landroid/preference/MyCheckBoxPreference;->getParent(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Landroid/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_21

    return-object v0

    :cond_21
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_25
    return-object v3
.end method

.method private getStateDrawable(Z)Landroid/graphics/drawable/Drawable;
    .registers 6

    invoke-virtual {p0}, Landroid/preference/MyCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "drawable"

    const-string v3, "android"

    if-nez p1, :cond_24

    const-string v1, "ic_collapse_notification"

    :goto_10
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Landroid/preference/MyCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/preference/MyCheckBoxPreference;->updateDrawableBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_23
    return-object v1

    :cond_24
    const-string v1, "ic_expand_notification"

    goto :goto_10
.end method

.method private initArrowColor(Landroid/view/View;)Z
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getForegroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v2

    if-nez v2, :cond_48

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_48

    invoke-virtual {p0}, Landroid/preference/MyCheckBoxPreference;->getContext()Landroid/content/Context;

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

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    iget v1, p0, Landroid/preference/MyCheckBoxPreference;->mArrowColor:I

    if-eqz v1, :cond_44

    const/4 v3, 0x1

    new-array v1, v3, [I

    sget v0, Lcom/android/internal/R$attr;->state_enabled:I

    mul-int/lit8 v0, v0, -0x1

    const/4 v3, 0x0

    aput v0, v1, v3

    const v3, -0x3f3f40

    invoke-virtual {v2, v1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iget v1, p0, Landroid/preference/MyCheckBoxPreference;->mArrowColor:I

    invoke-direct {p0, v1, v2}, Landroid/preference/MyCheckBoxPreference;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v2

    :cond_44
    invoke-virtual {p1, v2}, Landroid/view/View;->setForegroundTintList(Landroid/content/res/ColorStateList;)V

    const/4 v3, 0x1

    :cond_48
    return v3
.end method

.method private initExpandButton(Landroid/view/View;)V
    .registers 3

    iget-boolean v0, p0, Landroid/preference/MyCheckBoxPreference;->dependentsHide:Z

    if-nez v0, :cond_b

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/preference/MyCheckBoxPreference;->mParentView:Landroid/view/View;

    goto :goto_26

    :cond_b
    iget-object v0, p0, Landroid/preference/MyCheckBoxPreference;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_11

    if-eq v0, p1, :cond_26

    :cond_11
    invoke-direct {p0, p1}, Landroid/preference/MyCheckBoxPreference;->initArrowColor(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget v0, p0, Landroid/preference/MyCheckBoxPreference;->position:I

    packed-switch v0, :pswitch_data_38

    goto :goto_27

    :goto_1d
    invoke-virtual {p1, v0}, Landroid/view/View;->setForegroundGravity(I)V

    :cond_20
    iput-object p1, p0, Landroid/preference/MyCheckBoxPreference;->mParentView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/preference/MyCheckBoxPreference;->updateExpandButton(Z)V

    :cond_26
    :goto_26
    return-void

    :goto_27
    :pswitch_27
    const v0, 0x53

    goto :goto_1d

    :pswitch_2b
    const v0, 0x55

    goto :goto_1d

    :pswitch_2f
    const v0, 0x35

    goto :goto_1d

    :pswitch_33
    const v0, 0x33

    goto :goto_1d

    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_27
        :pswitch_2b
        :pswitch_2f
        :pswitch_33
    .end packed-switch
.end method

.method private updateDrawableBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_16

    iget v1, p0, Landroid/preference/MyCheckBoxPreference;->x:I

    iget v5, p0, Landroid/preference/MyCheckBoxPreference;->y:I

    iget-object v2, p0, Landroid/preference/MyCheckBoxPreference;->mParentView:Landroid/view/View;

    iget v3, p0, Landroid/preference/MyCheckBoxPreference;->position:I

    packed-switch v3, :pswitch_data_4a

    goto :goto_17

    :goto_f
    const/4 v0, 0x0

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    :cond_16
    return-object v0

    :goto_17
    :pswitch_17
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int v2, v1, v2

    const v3, 0x7

    sub-int v5, v3, v5

    move v3, v0

    move v4, v0

    goto :goto_f

    :pswitch_25
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int v4, v2, v1

    const v3, 0x7

    sub-int v5, v3, v5

    move v3, v0

    move v2, v0

    goto :goto_f

    :pswitch_33
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int v4, v2, v1

    add-int/lit8 v3, v5, 0x7

    move v5, v0

    move v2, v0

    goto :goto_f

    :pswitch_3e
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int v2, v1, v2

    add-int/lit8 v3, v5, 0x7

    move v5, v0

    move v4, v0

    goto :goto_f

    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_17
        :pswitch_25
        :pswitch_33
        :pswitch_3e
    .end packed-switch
.end method

.method private updateExpandButton(Z)V
    .registers 4

    iget-object v0, p0, Landroid/preference/MyCheckBoxPreference;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_b

    invoke-direct {p0, p1}, Landroid/preference/MyCheckBoxPreference;->getStateDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_b
    return-void
.end method


# virtual methods
.method public forceAddRemoveAllDependents(Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/preference/MyCheckBoxPreference;->addRemoveAllDependents(Z)V

    return-void
.end method

.method public hasDependentsHide()Z
    .registers 2

    iget-boolean v0, p0, Landroid/preference/MyCheckBoxPreference;->dependentsHide:Z

    return v0
.end method

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
    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->onAttachedToActivity()V

    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/preference/MyCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Landroid/preference/MyCheckBoxPreference;->mMyPreference:Landroid/preference/MyPreference;

    invoke-virtual {v0, p1, v1}, Landroid/preference/MyPreference;->setMargin(Landroid/view/View;Landroid/content/Context;)I

    invoke-direct {p0, p1}, Landroid/preference/MyCheckBoxPreference;->initExpandButton(Landroid/view/View;)V

    invoke-virtual {p0, p0}, Landroid/preference/MyCheckBoxPreference;->onPreferenceChange(Landroid/preference/Preference;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;)V
    .registers 3

    iget-boolean v0, p0, Landroid/preference/MyCheckBoxPreference;->dependentsHide:Z

    if-eqz v0, :cond_b

    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->shouldDisableDependents()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/preference/MyCheckBoxPreference;->addRemoveAllDependents(Z)V

    :cond_b
    return-void
.end method

.method public onPreferenceHierarchyChange(Landroid/preference/Preference;)V
    .registers 2

    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .registers 8

    invoke-virtual {p0}, Landroid/preference/MyCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/preference/MyCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Landroid/preference/MyCheckBoxPreference;->mMyPreference:Landroid/preference/MyPreference;

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/preference/MyPreference;->getInteger(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_22

    if-nez p1, :cond_26

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_19
    iget-boolean v4, p0, Landroid/preference/MyCheckBoxPreference;->disableKeyIntent:Z

    if-nez v4, :cond_22

    iget-object v3, p0, Landroid/preference/MyCheckBoxPreference;->mMyPreference:Landroid/preference/MyPreference;

    invoke-virtual {v3, v1, v2, v0}, Landroid/preference/MyPreference;->setInteger(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_22
    invoke-virtual {p0, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void

    :cond_26
    iget-boolean v0, p0, Landroid/preference/MyCheckBoxPreference;->mChecked:Z

    invoke-virtual {p0, v0}, Landroid/preference/MyCheckBoxPreference;->getPersistedBoolean(Z)Z

    move-result v0

    goto :goto_19
.end method

.method public registerDependent(Landroid/preference/Preference;)Z
    .registers 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/preference/MyCheckBoxPreference;->dependentsHide:Z

    if-eqz v0, :cond_14

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/preference/MyCheckBoxPreference;->myDependents:Ljava/util/List;

    if-nez v0, :cond_11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/preference/MyCheckBoxPreference;->myDependents:Ljava/util/List;

    :cond_11
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    return v1
.end method

.method public setChecked(Z)V
    .registers 6

    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual {p0}, Landroid/preference/MyCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/preference/MyCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/preference/MyCheckBoxPreference;->mMyPreference:Landroid/preference/MyPreference;

    invoke-virtual {v0, v1, v2, v3}, Landroid/preference/MyPreference;->getInteger(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, p1, :cond_1e

    iget-boolean v3, p0, Landroid/preference/MyCheckBoxPreference;->disableKeyIntent:Z

    if-nez v3, :cond_1e

    invoke-virtual {v0, v1, v2, p1}, Landroid/preference/MyPreference;->setInteger(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/preference/MyPreference;->sendIntent(Landroid/content/Context;)V

    :cond_1e
    return-void
.end method
