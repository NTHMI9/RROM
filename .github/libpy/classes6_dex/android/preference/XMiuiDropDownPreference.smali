.class public Landroidx/preference/XMiuiDropDownPreference;
.super Landroidx/preference/DropDownPreference;
.source "XMiuiDropDownPreference.java"


# instance fields
.field private Helper:Landroidx/preference/XMiuiPreferenceHelper;

.field private mLastState:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 12
    invoke-direct {p0, p1, p2}, Landroidx/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    new-instance v0, Landroidx/preference/XMiuiPreferenceHelper;

    invoke-direct {v0, p1, p2}, Landroidx/preference/XMiuiPreferenceHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Landroidx/preference/XMiuiDropDownPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    .line 14
    iget-object v0, p0, Landroidx/preference/XMiuiDropDownPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    invoke-virtual {v0}, Landroidx/preference/XMiuiPreferenceHelper;->isValidateKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Landroidx/preference/XMiuiDropDownPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    invoke-virtual {v0}, Landroidx/preference/XMiuiPreferenceHelper;->getStr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/XMiuiDropDownPreference;->mLastState:Ljava/lang/String;

    .line 19
    :goto_0
    iget-object v0, p0, Landroidx/preference/XMiuiDropDownPreference;->mLastState:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/preference/XMiuiDropDownPreference;->setValue(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Landroidx/preference/XMiuiDropDownPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/XMiuiDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 21
    invoke-virtual {p0, v1}, Landroidx/preference/XMiuiDropDownPreference;->setPersistent(Z)V

    .line 22
    return-void

    .line 17
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/XMiuiDropDownPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/preference/XMiuiDropDownPreference;->mLastState:Ljava/lang/String;

    goto :goto_0
.end method

.method private getDependents(Ljava/lang/String;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 25
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    .line 27
    :cond_0
    :goto_0
    return v0

    .line 26
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public callChangeListener(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 55
    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "value":Ljava/lang/String;
    sget-object v1, Landroidx/preference/XMiuiPreferenceHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callChangeListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroidx/preference/XMiuiDropDownPreference;->mLastState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v1, p0, Landroidx/preference/XMiuiDropDownPreference;->mLastState:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/preference/XMiuiDropDownPreference;->mLastState:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    iget-object v1, p0, Landroidx/preference/XMiuiDropDownPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    invoke-virtual {v1, v0}, Landroidx/preference/XMiuiPreferenceHelper;->putStr(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Landroidx/preference/XMiuiDropDownPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    invoke-virtual {v1}, Landroidx/preference/XMiuiPreferenceHelper;->sendIntent()V

    .line 61
    iput-object v0, p0, Landroidx/preference/XMiuiDropDownPreference;->mLastState:Ljava/lang/String;

    .line 62
    invoke-virtual {p0, v0}, Landroidx/preference/XMiuiDropDownPreference;->setValue(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Landroidx/preference/XMiuiDropDownPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/preference/XMiuiDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {p0}, Landroidx/preference/XMiuiDropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/preference/XMiuiDropDownPreference;->getDependents(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/preference/XMiuiDropDownPreference;->notifyDependencyChange(Z)V

    .line 67
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/DropDownPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "typedArray"    # Landroid/content/res/TypedArray;
    .param p2, "n"    # I

    .prologue
    .line 34
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onSetInitialValue(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 40
    iget-object v0, p0, Landroidx/preference/XMiuiDropDownPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    invoke-virtual {v0}, Landroidx/preference/XMiuiPreferenceHelper;->isValidateKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Landroidx/preference/XMiuiDropDownPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    invoke-virtual {v0}, Landroidx/preference/XMiuiPreferenceHelper;->getStr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/XMiuiDropDownPreference;->mLastState:Ljava/lang/String;

    .line 49
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/preference/XMiuiDropDownPreference;->mLastState:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/preference/XMiuiDropDownPreference;->setValue(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Landroidx/preference/XMiuiDropDownPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/XMiuiDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 51
    return-void

    .line 43
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    if-eqz p1, :cond_0

    .line 44
    check-cast p1, Ljava/lang/String;

    .end local p1    # "o":Ljava/lang/Object;
    iput-object p1, p0, Landroidx/preference/XMiuiDropDownPreference;->mLastState:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Landroidx/preference/XMiuiDropDownPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    iget-object v1, p0, Landroidx/preference/XMiuiDropDownPreference;->mLastState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/XMiuiPreferenceHelper;->putStr(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Landroidx/preference/XMiuiDropDownPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    invoke-virtual {v0}, Landroidx/preference/XMiuiPreferenceHelper;->sendIntent()V

    goto :goto_0
.end method

.method public shouldDisableDependents()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 73
    :try_start_0
    iget-object v1, p0, Landroidx/preference/XMiuiDropDownPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    invoke-virtual {v1}, Landroidx/preference/XMiuiPreferenceHelper;->getStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    .line 75
    :cond_0
    :goto_0
    return v0

    .line 74
    :catch_0
    move-exception v1

    goto :goto_0
.end method
