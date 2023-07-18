.class public Lcom/android/internal/util/custom/PixelPropsUtils;
.super Ljava/lang/Object;
.source "PixelPropsUtils.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEVICE:Ljava/lang/String; = "org.miui.device"

.field private static final SAMSUNG:Ljava/lang/String; = "com.samsung."

.field private static final TAG:Ljava/lang/String;

.field private static final customGoogleCameraPackages:[Ljava/lang/String;

.field private static final extraPackagesToChange:[Ljava/lang/String;

.field private static final packagesToChangeMI11:[Ljava/lang/String;

.field private static final packagesToChangeOP8P:[Ljava/lang/String;

.field private static final packagesToChangeOP9P:[Ljava/lang/String;

.field private static final packagesToChangePixel7Pro:[Ljava/lang/String;

.field private static final packagesToChangePixelXL:[Ljava/lang/String;

.field private static final packagesToChangeROG1:[Ljava/lang/String;

.field private static final packagesToChangeUserdebug:[Ljava/lang/String;

.field private static final packagesToChangeXP5:[Ljava/lang/String;

.field private static final packagesToKeep:[Ljava/lang/String;

.field private static final pixelCodenames:[Ljava/lang/String;

.field private static final propsToChangeGeneric:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final propsToChangeMI11:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final propsToChangeOP8P:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final propsToChangeOP9P:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final propsToChangePixel5:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final propsToChangePixel7Pro:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final propsToChangePixelXL:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final propsToChangeROG1:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final propsToChangeUserdebug:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final propsToChangeXP5:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final propsToKeep:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile sIsFinsky:Z

.field private static volatile sIsGms:Z


# direct methods
.method static constructor <clinit>()V
    .registers 12

    const-class v0, Lcom/android/internal/util/custom/PixelPropsUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/custom/PixelPropsUtils;->TAG:Ljava/lang/String;

    const-string v1, "com.google.android.apps.turbo"

    const-string v2, "com.google.android.apps.wallpaper"

    const-string v3, "com.google.android.apps.wallpaper.pixel"

    const-string v4, "com.google.android.apps.privacy.wildlife"

    const-string v5, "com.google.android.apps.nbu.files"

    const-string v6, "com.google.android.apps.podcasts"

    const-string v7, "com.google.android.contacts"

    const-string v8, "com.google.android.deskclock"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/custom/PixelPropsUtils;->packagesToChangePixel7Pro:[Ljava/lang/String;

    const-string v0, "com.google.android.apps.photos"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/custom/PixelPropsUtils;->packagesToChangePixelXL:[Ljava/lang/String;

    const-string v1, "com.google.android.inputmethod.latin"

    const-string v2, "com.google.android.setupwizard"

    const-string v3, "com.google.android.googlequicksearchbox"

    const-string v4, "com.google.android.apps.googleassistant"

    const-string v5, "com.android.chrome"

    const-string v6, "com.android.vending"

    const-string v7, "com.breel.wallpapers20"

    const-string v8, "com.nothing.smartcenter"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/custom/PixelPropsUtils;->extraPackagesToChange:[Ljava/lang/String;

    const-string v0, "com.google.android.MTCL83"

    const-string v1, "com.google.android.UltraCVM"

    const-string v2, "com.google.android.apps.cameralite"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/custom/PixelPropsUtils;->customGoogleCameraPackages:[Ljava/lang/String;

    const-string v0, "com.dts.freefireth"

    const-string v1, "com.dts.freefiremax"

    const-string v2, "com.madfingergames.legends"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/custom/PixelPropsUtils;->packagesToChangeROG1:[Ljava/lang/String;

    const-string v0, "com.activision.callofduty.shooter"

    const-string v1, "com.tencent.tmgp.kr.codm"

    const-string v2, "com.garena.game.codm"

    const-string v3, "com.vng.codmvn"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/custom/PixelPropsUtils;->packagesToChangeXP5:[Ljava/lang/String;

    const-string v1, "com.tencent.ig"

    const-string v2, "com.riotgames.league.wildrift"

    const-string v3, "com.riotgames.league.wildrifttw"

    const-string v4, "com.riotgames.league.wildriftvn"

    const-string v5, "com.netease.lztgglobal"

    filled-new-array/range {v1 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/custom/PixelPropsUtils;->packagesToChangeOP8P:[Ljava/lang/String;

    const-string v0, "com.epicgames.fortnite"

    const-string v1, "com.epicgames.portal"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/custom/PixelPropsUtils;->packagesToChangeOP9P:[Ljava/lang/String;

    const-string v0, "com.ea.gp.apexlegendsmobilefps"

    const-string v1, "com.levelinfinite.hotta.gp"

    const-string v2, "com.mobile.legends"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/custom/PixelPropsUtils;->packagesToChangeMI11:[Ljava/lang/String;

    const-string v1, "com.google.android.dialer"

    const-string v2, "com.google.android.euicc"

    const-string v3, "com.google.ar.core"

    const-string v4, "com.google.android.youtube"

    const-string v5, "com.google.android.apps.youtube.kids"

    const-string v6, "com.google.android.apps.youtube.music"

    const-string v7, "com.google.android.apps.recorder"

    const-string v8, "com.google.android.apps.wearables.maestro.companion"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/custom/PixelPropsUtils;->packagesToKeep:[Ljava/lang/String;

    const-string v0, "com.google.android.apps.nexuslauncher"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/custom/PixelPropsUtils;->packagesToChangeUserdebug:[Ljava/lang/String;

    const-string v1, "cheetah"

    const-string/jumbo v2, "panther"

    const-string v3, "bluejay"

    const-string/jumbo v4, "oriole"

    const-string/jumbo v5, "raven"

    const-string v6, "barbet"

    const-string/jumbo v7, "redfin"

    const-string v8, "bramble"

    const-string/jumbo v9, "sunfish"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/custom/PixelPropsUtils;->pixelCodenames:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/util/custom/PixelPropsUtils;->sIsGms:Z

    sput-boolean v0, Lcom/android/internal/util/custom/PixelPropsUtils;->sIsFinsky:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/custom/PixelPropsUtils;->propsToKeep:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "FINGERPRINT"

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "com.google.android.settings.intelligence"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/custom/PixelPropsUtils;->propsToChangeGeneric:Ljava/util/Map;

    const-string v1, "TYPE"

    const-string/jumbo v3, "user"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "TAGS"

    const-string/jumbo v4, "release-keys"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/custom/PixelPropsUtils;->propsToChangeUserdebug:Ljava/util/Map;

    const-string/jumbo v3, "userdebug"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/custom/PixelPropsUtils;->propsToChangePixel7Pro:Ljava/util/Map;

    const-string v1, "BRAND"

    const-string v3, "google"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "MANUFACTURER"

    const-string v5, "Google"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "DEVICE"

    const-string v7, "cheetah"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "PRODUCT"

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "MODEL"

    const-string v9, "Pixel 7 Pro"

    invoke-interface {v0, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "google/cheetah/cheetah:13/TQ2A.230305.008.C1/9619669:user/release-keys"

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/custom/PixelPropsUtils;->propsToChangePixel5:Ljava/util/Map;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v9, "redfin"

    invoke-interface {v0, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "Pixel 5"

    invoke-interface {v0, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "google/redfin/redfin:13/TQ2A.230305.008.C1/9619669:user/release-keys"

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/custom/PixelPropsUtils;->propsToChangePixelXL:Ljava/util/Map;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "marlin"

    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Pixel XL"

    invoke-interface {v0, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "google/marlin/marlin:10/QP1A.191005.007.A3/5972272:user/release-keys"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/custom/PixelPropsUtils;->propsToChangeROG1:Ljava/util/Map;

    const-string v2, "ASUS_Z01QD"

    invoke-interface {v0, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "asus"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/custom/PixelPropsUtils;->propsToChangeXP5:Ljava/util/Map;

    const-string v2, "SO-52A"

    invoke-interface {v0, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/custom/PixelPropsUtils;->propsToChangeOP8P:Ljava/util/Map;

    const-string v2, "IN2020"

    invoke-interface {v0, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "OnePlus"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/custom/PixelPropsUtils;->propsToChangeOP9P:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "OnePlus9Pro"

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "OnePlus9Pro_EEA"

    invoke-interface {v0, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "LE2123"

    invoke-interface {v0, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/custom/PixelPropsUtils;->propsToChangeMI11:Ljava/util/Map;

    const-string v2, "Xiaomi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "star"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "M2102K1G"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isCallerSafetyNet()Z
    .registers 2

    sget-boolean v0, Lcom/android/internal/util/custom/PixelPropsUtils;->sIsGms:Z

    if-eqz v0, :cond_1d

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/util/custom/PixelPropsUtils$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/internal/util/custom/PixelPropsUtils$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    return v0
.end method

.method private static isGoogleCameraPackage(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "com.google.android.GoogleCamera"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/android/internal/util/custom/PixelPropsUtils;->customGoogleCameraPackages:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method static synthetic lambda$isCallerSafetyNet$2(Ljava/lang/StackTraceElement;)Z
    .registers 2

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DroidGuard"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$setProps$0(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/util/custom/PixelPropsUtils;->setPropValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$setProps$1(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/util/custom/PixelPropsUtils;->setPropValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static onEngineGetCertificateChain()V
    .registers 3

    invoke-static {}, Lcom/android/internal/util/custom/PixelPropsUtils;->isCallerSafetyNet()Z

    move-result v0

    if-nez v0, :cond_b

    sget-boolean v0, Lcom/android/internal/util/custom/PixelPropsUtils;->sIsFinsky:Z

    if-nez v0, :cond_b

    return-void

    :cond_b
    sget-object v0, Lcom/android/internal/util/custom/PixelPropsUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Blocked key attestation sIsGms="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/util/custom/PixelPropsUtils;->sIsGms:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sIsFinsky="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/util/custom/PixelPropsUtils;->sIsFinsky:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private static setPropValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    :try_start_0
    const-class v0, Landroid/os/Build;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_12
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_12} :catch_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_2c

    :catch_13
    move-exception p1

    sget-object v0, Lcom/android/internal/util/custom/PixelPropsUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set prop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2c
    return-void
.end method

.method public static setProps(Ljava/lang/String;)V
    .registers 7

    sget-object v0, Lcom/android/internal/util/custom/PixelPropsUtils;->propsToChangeGeneric:Ljava/util/Map;

    new-instance v1, Lcom/android/internal/util/custom/PixelPropsUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/util/custom/PixelPropsUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    if-eqz p0, :cond_28d

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    goto/16 :goto_28d

    :cond_14
    sget-object v0, Lcom/android/internal/util/custom/PixelPropsUtils;->packagesToKeep:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    return-void

    :cond_21
    invoke-static {p0}, Lcom/android/internal/util/custom/PixelPropsUtils;->isGoogleCameraPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    return-void

    :cond_28
    const-string v0, "com.google."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13e

    const-string v0, "com.samsung."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13e

    sget-object v0, Lcom/android/internal/util/custom/PixelPropsUtils;->extraPackagesToChange:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    goto/16 :goto_13e

    :cond_46
    sget-object v0, Lcom/android/internal/util/custom/PixelPropsUtils;->packagesToChangeROG1:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    sget-object p0, Lcom/android/internal/util/custom/PixelPropsUtils;->propsToChangeROG1:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/internal/util/custom/PixelPropsUtils;->setPropValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5c

    :cond_76
    goto/16 :goto_28c

    :cond_78
    sget-object v0, Lcom/android/internal/util/custom/PixelPropsUtils;->packagesToChangeXP5:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_aa

    sget-object p0, Lcom/android/internal/util/custom/PixelPropsUtils;->propsToChangeXP5:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/internal/util/custom/PixelPropsUtils;->setPropValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_8e

    :cond_a8
    goto/16 :goto_28c

    :cond_aa
    sget-object v0, Lcom/android/internal/util/custom/PixelPropsUtils;->packagesToChangeOP8P:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dc

    sget-object p0, Lcom/android/internal/util/custom/PixelPropsUtils;->propsToChangeOP8P:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_c0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_da

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/internal/util/custom/PixelPropsUtils;->setPropValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_c0

    :cond_da
    goto/16 :goto_28c

    :cond_dc
    sget-object v0, Lcom/android/internal/util/custom/PixelPropsUtils;->packagesToChangeOP9P:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10e

    sget-object p0, Lcom/android/internal/util/custom/PixelPropsUtils;->propsToChangeOP9P:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/internal/util/custom/PixelPropsUtils;->setPropValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_f2

    :cond_10c
    goto/16 :goto_28c

    :cond_10e
    sget-object v0, Lcom/android/internal/util/custom/PixelPropsUtils;->packagesToChangeMI11:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_28c

    sget-object p0, Lcom/android/internal/util/custom/PixelPropsUtils;->propsToChangeMI11:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_124
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/internal/util/custom/PixelPropsUtils;->setPropValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_124

    :cond_13e
    :goto_13e
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/android/internal/util/custom/PixelPropsUtils;->pixelCodenames:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "org.miui.device"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "com.google.android.apps.photos"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_163

    sget-object v1, Lcom/android/internal/util/custom/PixelPropsUtils;->propsToChangePixelXL:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_1aa

    :cond_163
    const-string v2, "com.android.vending"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16e

    sput-boolean v3, Lcom/android/internal/util/custom/PixelPropsUtils;->sIsFinsky:Z

    return-void

    :cond_16e
    if-nez v1, :cond_1aa

    sget-object v1, Lcom/android/internal/util/custom/PixelPropsUtils;->packagesToChangePixel7Pro:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_182

    sget-object v1, Lcom/android/internal/util/custom/PixelPropsUtils;->propsToChangePixel7Pro:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_199

    :cond_182
    sget-object v1, Lcom/android/internal/util/custom/PixelPropsUtils;->packagesToChangePixelXL:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_194

    sget-object v1, Lcom/android/internal/util/custom/PixelPropsUtils;->propsToChangePixelXL:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_199

    :cond_194
    sget-object v1, Lcom/android/internal/util/custom/PixelPropsUtils;->propsToChangePixel5:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :goto_199
    sget-object v1, Lcom/android/internal/util/custom/PixelPropsUtils;->packagesToChangeUserdebug:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1aa

    sget-object v1, Lcom/android/internal/util/custom/PixelPropsUtils;->propsToChangeUserdebug:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1aa
    :goto_1aa
    sget-object v1, Lcom/android/internal/util/custom/PixelPropsUtils;->packagesToChangeROG1:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1bb

    sget-object v1, Lcom/android/internal/util/custom/PixelPropsUtils;->propsToChangeROG1:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1bb
    sget-object v1, Lcom/android/internal/util/custom/PixelPropsUtils;->packagesToChangeXP5:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1cc

    sget-object v1, Lcom/android/internal/util/custom/PixelPropsUtils;->propsToChangeXP5:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1cc
    sget-object v1, Lcom/android/internal/util/custom/PixelPropsUtils;->packagesToChangeOP8P:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1dd

    sget-object v1, Lcom/android/internal/util/custom/PixelPropsUtils;->propsToChangeOP8P:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1dd
    sget-object v1, Lcom/android/internal/util/custom/PixelPropsUtils;->packagesToChangeOP9P:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ee

    sget-object v1, Lcom/android/internal/util/custom/PixelPropsUtils;->propsToChangeOP9P:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1ee
    sget-object v1, Lcom/android/internal/util/custom/PixelPropsUtils;->packagesToChangeMI11:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ff

    sget-object v1, Lcom/android/internal/util/custom/PixelPropsUtils;->propsToChangeMI11:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1ff
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_207
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_236

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lcom/android/internal/util/custom/PixelPropsUtils;->propsToKeep:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_232

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_232

    goto :goto_207

    :cond_232
    invoke-static {v2, v1}, Lcom/android/internal/util/custom/PixelPropsUtils;->setPropValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_207

    :cond_236
    const-string v0, "com.google.android.gms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "FINGERPRINT"

    if-eqz v0, :cond_27e

    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.google.android.gms.unstable"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_273

    sput-boolean v3, Lcom/android/internal/util/custom/PixelPropsUtils;->sIsGms:Z

    const-string p0, "google/marlin/marlin:7.1.2/NJH47F/4146041:user/release-keys"

    invoke-static {v1, p0}, Lcom/android/internal/util/custom/PixelPropsUtils;->setPropValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "PRODUCT"

    const-string/jumbo v0, "marlin"

    invoke-static {p0, v0}, Lcom/android/internal/util/custom/PixelPropsUtils;->setPropValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "DEVICE"

    invoke-static {p0, v0}, Lcom/android/internal/util/custom/PixelPropsUtils;->setPropValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "MODEL"

    const-string v0, "Pixel XL"

    invoke-static {p0, v0}, Lcom/android/internal/util/custom/PixelPropsUtils;->setPropValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 p0, 0x19

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "DEVICE_INITIAL_SDK_INT"

    invoke-static {v0, p0}, Lcom/android/internal/util/custom/PixelPropsUtils;->setVersionField(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_27d

    :cond_273
    sget-object p0, Lcom/android/internal/util/custom/PixelPropsUtils;->propsToChangePixel7Pro:Ljava/util/Map;

    new-instance v0, Lcom/android/internal/util/custom/PixelPropsUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/util/custom/PixelPropsUtils$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    :goto_27d
    return-void

    :cond_27e
    const-string v0, "com.google.android.settings.intelligence"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_28b

    sget-object p0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/android/internal/util/custom/PixelPropsUtils;->setPropValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_28b
    nop

    :cond_28c
    :goto_28c
    return-void

    :cond_28d
    :goto_28d
    return-void
.end method

.method private static setVersionField(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    :try_start_0
    const-class v0, Landroid/os/Build$VERSION;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_12
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_12} :catch_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_2c

    :catch_13
    move-exception p1

    sget-object v0, Lcom/android/internal/util/custom/PixelPropsUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set version field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2c
    return-void
.end method
