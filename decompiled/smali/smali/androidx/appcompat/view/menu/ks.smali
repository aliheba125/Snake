.class public final synthetic Landroidx/appcompat/view/menu/ks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Lcom/google/firebase/messaging/FirebaseMessaging;

.field public final synthetic n:Landroidx/appcompat/view/menu/bz0;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/messaging/FirebaseMessaging;Landroidx/appcompat/view/menu/bz0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/ks;->m:Lcom/google/firebase/messaging/FirebaseMessaging;

    iput-object p2, p0, Landroidx/appcompat/view/menu/ks;->n:Landroidx/appcompat/view/menu/bz0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/ks;->m:Lcom/google/firebase/messaging/FirebaseMessaging;

    iget-object v1, p0, Landroidx/appcompat/view/menu/ks;->n:Landroidx/appcompat/view/menu/bz0;

    invoke-static {v0, v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->f(Lcom/google/firebase/messaging/FirebaseMessaging;Landroidx/appcompat/view/menu/bz0;)V

    return-void
.end method
