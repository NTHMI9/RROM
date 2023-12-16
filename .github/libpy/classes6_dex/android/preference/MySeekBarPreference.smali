.class public Landroid/preference/MySeekBarPreference;
.super Landroid/preference/Preference;
.source "MySeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private mMax:I

.field private mMin:I

.field private mMyPreference:Landroid/preference/MyPreference;

.field private mProgress:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mStep:I

.field private mSummary:Landroid/widget/TextView;

.field private mTrackingTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/preference/MyPreference;

    invoke-direct {v0, p1, p2}, Landroid/preference/MyPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Landroid/preference/MySeekBarPreference;->mMyPreference:Landroid/preference/MyPreference;

    const-string v0, "min"

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/preference/MySeekBarPreference;->mMin:I

    const-string v0, "step"

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_1d

    const/4 v0, 0x1

    :cond_1d
    iput v0, p0, Landroid/preference/MySeekBarPreference;->mStep:I

    const-string v0, "max"

    const v2, 0x64

    invoke-interface {p2, v1, v0, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iget v1, p0, Landroid/preference/MySeekBarPreference;->mStep:I

    add-int/2addr v3, v1

    if-ge v0, v3, :cond_2e

    move v0, v3

    :cond_2e
    iput v0, p0, Landroid/preference/MySeekBarPreference;->mMax:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/preference/MySeekBarPreference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method private setSummaryInternal(Ljava/lang/CharSequence;)V
    .registers 4

    const-string v1, "%s"

    invoke-super {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_c
    const-string v0, "%s"

    invoke-virtual {v1, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Landroid/preference/MySeekBarPreference;->mSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_19
    return-void
.end method

.method private translateProgressToSeekBar(I)I
    .registers 4

    iget v0, p0, Landroid/preference/MySeekBarPreference;->mMin:I

    move v1, p1

    sub-int/2addr v1, v0

    iget v0, p0, Landroid/preference/MySeekBarPreference;->mStep:I

    div-int/2addr v1, v0

    return v1
.end method

.method private translateProgressToUser(I)I
    .registers 4

    iget v0, p0, Landroid/preference/MySeekBarPreference;->mStep:I

    mul-int/2addr v0, p1

    iget v1, p0, Landroid/preference/MySeekBarPreference;->mMin:I

    add-int/2addr v0, v1

    return v0
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
    .registers 6

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/preference/MySeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "summary"

    const-string v2, "id"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/preference/MySeekBarPreference;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const v3, 0x0

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const-string v1, "icon"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_56

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_56

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_56
    const-string v1, "arrow_right"

    const-string v2, "id"

    const-string v3, "com.android.settings"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_6c

    const v2, 0x8

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_6c
    const-string v2, "id"

    const-string v3, "miui"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_80

    const v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_80
    const-string v1, "seekbar"

    const-string v2, "id"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Landroid/preference/MySeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const v3, 0x5

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const v3, -0x7

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const v3, 0x7

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v2, v1, v3, v1, v3}, Landroid/widget/SeekBar;->setPadding(IIII)V

    iget v3, p0, Landroid/preference/MySeekBarPreference;->mMax:I

    iget v1, p0, Landroid/preference/MySeekBarPreference;->mMin:I

    sub-int/2addr v3, v1

    iget v1, p0, Landroid/preference/MySeekBarPreference;->mStep:I

    div-int/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget v1, p0, Landroid/preference/MySeekBarPreference;->mProgress:I

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    invoke-direct {p0, v1}, Landroid/preference/MySeekBarPreference;->translateProgressToUser(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/MySeekBarPreference;->setSummaryInternal(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v1, p0, Landroid/preference/MySeekBarPreference;->mMyPreference:Landroid/preference/MyPreference;

    invoke-virtual {v1}, Landroid/preference/MyPreference;->getMargin()I

    move-result v1

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {v2, v1, v0, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/preference/MySeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v1, "preference_dialog_seekbar"

    const-string v2, "layout"

    const-string v3, "android"

    invoke-virtual {v4, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-object v1
.end method

.method public onDependencyChanged(Landroid/preference/Preference;Z)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->onDependencyChanged(Landroid/preference/Preference;Z)V

    iget-object v0, p0, Landroid/preference/MySeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_c

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :cond_c
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 5

    if-eqz p3, :cond_d

    invoke-direct {p0, p2}, Landroid/preference/MySeekBarPreference;->translateProgressToUser(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/MySeekBarPreference;->setSummaryInternal(Ljava/lang/CharSequence;)V

    :cond_d
    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .registers 6

    invoke-virtual {p0}, Landroid/preference/MySeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/preference/MySeekBarPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    if-nez p1, :cond_24

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_10
    iget-object v0, p0, Landroid/preference/MySeekBarPreference;->mMyPreference:Landroid/preference/MyPreference;

    invoke-virtual {v0, v1, v2, p2}, Landroid/preference/MyPreference;->getInteger(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/preference/MySeekBarPreference;->translateProgressToSeekBar(I)I

    move-result p2

    iput p2, p0, Landroid/preference/MySeekBarPreference;->mProgress:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/MySeekBarPreference;->setSummaryInternal(Ljava/lang/CharSequence;)V

    return-void

    :cond_24
    iget p2, p0, Landroid/preference/MySeekBarPreference;->mProgress:I

    goto :goto_10
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/MySeekBarPreference;->mTrackingTouch:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/preference/MySeekBarPreference;->mTrackingTouch:Z

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Landroid/preference/MySeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_3e

    iput v0, p0, Landroid/preference/MySeekBarPreference;->mProgress:I

    invoke-virtual {p0}, Landroid/preference/MySeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/preference/MySeekBarPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Landroid/preference/MySeekBarPreference;->mMyPreference:Landroid/preference/MyPreference;

    const-string v3, "<>"

    invoke-virtual {v0, v1, v2, v3}, Landroid/preference/MyPreference;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget v3, p0, Landroid/preference/MySeekBarPreference;->mProgress:I

    invoke-direct {p0, v3}, Landroid/preference/MySeekBarPreference;->translateProgressToUser(I)I

    move-result v3

    if-eq v3, v4, :cond_3e

    :cond_2f
    iget v3, p0, Landroid/preference/MySeekBarPreference;->mProgress:I

    invoke-direct {p0, v3}, Landroid/preference/MySeekBarPreference;->translateProgressToUser(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/preference/MyPreference;->setInteger(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/preference/MyPreference;->sendIntent(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/preference/MySeekBarPreference;->notifyChanged()V

    :cond_3e
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Landroid/preference/MySeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :cond_a
    return-void
.end method
