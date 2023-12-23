.class public final synthetic Lcom/android/internal/util/PropImitationHooks$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/android/internal/util/PropImitationHooks;->lambda$setProps$1(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
