.class public Lcom/google/firebase/messaging/FirebaseMessagingRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "fire-fcm"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroidx/appcompat/view/menu/xd;)Lcom/google/firebase/messaging/FirebaseMessaging;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/messaging/FirebaseMessagingRegistrar;->lambda$getComponents$0(Landroidx/appcompat/view/menu/xd;)Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getComponents$0(Landroidx/appcompat/view/menu/xd;)Lcom/google/firebase/messaging/FirebaseMessaging;
    .locals 9

    new-instance v8, Lcom/google/firebase/messaging/FirebaseMessaging;

    const-class v0, Landroidx/appcompat/view/menu/or;

    invoke-interface {p0, v0}, Landroidx/appcompat/view/menu/xd;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/appcompat/view/menu/or;

    const-class v0, Landroidx/appcompat/view/menu/es;

    invoke-interface {p0, v0}, Landroidx/appcompat/view/menu/xd;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    const-class v0, Landroidx/appcompat/view/menu/l41;

    invoke-interface {p0, v0}, Landroidx/appcompat/view/menu/xd;->d(Ljava/lang/Class;)Landroidx/appcompat/view/menu/el0;

    move-result-object v3

    const-class v0, Landroidx/appcompat/view/menu/zy;

    invoke-interface {p0, v0}, Landroidx/appcompat/view/menu/xd;->d(Ljava/lang/Class;)Landroidx/appcompat/view/menu/el0;

    move-result-object v4

    const-class v0, Landroidx/appcompat/view/menu/bs;

    invoke-interface {p0, v0}, Landroidx/appcompat/view/menu/xd;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/appcompat/view/menu/bs;

    const-class v0, Landroidx/appcompat/view/menu/e21;

    invoke-interface {p0, v0}, Landroidx/appcompat/view/menu/xd;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroidx/appcompat/view/menu/e21;

    const-class v0, Landroidx/appcompat/view/menu/by0;

    invoke-interface {p0, v0}, Landroidx/appcompat/view/menu/xd;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Landroidx/appcompat/view/menu/by0;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/messaging/FirebaseMessaging;-><init>(Landroidx/appcompat/view/menu/or;Landroidx/appcompat/view/menu/es;Landroidx/appcompat/view/menu/el0;Landroidx/appcompat/view/menu/el0;Landroidx/appcompat/view/menu/bs;Landroidx/appcompat/view/menu/e21;Landroidx/appcompat/view/menu/by0;)V

    return-object v8
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/appcompat/view/menu/ud;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    invoke-static {v0}, Landroidx/appcompat/view/menu/ud;->e(Ljava/lang/Class;)Landroidx/appcompat/view/menu/ud$b;

    move-result-object v0

    const-string v1, "fire-fcm"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/ud$b;->h(Ljava/lang/String;)Landroidx/appcompat/view/menu/ud$b;

    move-result-object v0

    const-class v2, Landroidx/appcompat/view/menu/or;

    invoke-static {v2}, Landroidx/appcompat/view/menu/il;->j(Ljava/lang/Class;)Landroidx/appcompat/view/menu/il;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/ud$b;->b(Landroidx/appcompat/view/menu/il;)Landroidx/appcompat/view/menu/ud$b;

    move-result-object v0

    const-class v2, Landroidx/appcompat/view/menu/es;

    invoke-static {v2}, Landroidx/appcompat/view/menu/il;->g(Ljava/lang/Class;)Landroidx/appcompat/view/menu/il;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/ud$b;->b(Landroidx/appcompat/view/menu/il;)Landroidx/appcompat/view/menu/ud$b;

    move-result-object v0

    const-class v2, Landroidx/appcompat/view/menu/l41;

    invoke-static {v2}, Landroidx/appcompat/view/menu/il;->h(Ljava/lang/Class;)Landroidx/appcompat/view/menu/il;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/ud$b;->b(Landroidx/appcompat/view/menu/il;)Landroidx/appcompat/view/menu/ud$b;

    move-result-object v0

    const-class v2, Landroidx/appcompat/view/menu/zy;

    invoke-static {v2}, Landroidx/appcompat/view/menu/il;->h(Ljava/lang/Class;)Landroidx/appcompat/view/menu/il;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/ud$b;->b(Landroidx/appcompat/view/menu/il;)Landroidx/appcompat/view/menu/ud$b;

    move-result-object v0

    const-class v2, Landroidx/appcompat/view/menu/e21;

    invoke-static {v2}, Landroidx/appcompat/view/menu/il;->g(Ljava/lang/Class;)Landroidx/appcompat/view/menu/il;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/ud$b;->b(Landroidx/appcompat/view/menu/il;)Landroidx/appcompat/view/menu/ud$b;

    move-result-object v0

    const-class v2, Landroidx/appcompat/view/menu/bs;

    invoke-static {v2}, Landroidx/appcompat/view/menu/il;->j(Ljava/lang/Class;)Landroidx/appcompat/view/menu/il;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/ud$b;->b(Landroidx/appcompat/view/menu/il;)Landroidx/appcompat/view/menu/ud$b;

    move-result-object v0

    const-class v2, Landroidx/appcompat/view/menu/by0;

    invoke-static {v2}, Landroidx/appcompat/view/menu/il;->j(Ljava/lang/Class;)Landroidx/appcompat/view/menu/il;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/ud$b;->b(Landroidx/appcompat/view/menu/il;)Landroidx/appcompat/view/menu/ud$b;

    move-result-object v0

    new-instance v2, Landroidx/appcompat/view/menu/ns;

    invoke-direct {v2}, Landroidx/appcompat/view/menu/ns;-><init>()V

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/ud$b;->f(Landroidx/appcompat/view/menu/de;)Landroidx/appcompat/view/menu/ud$b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ud$b;->c()Landroidx/appcompat/view/menu/ud$b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ud$b;->d()Landroidx/appcompat/view/menu/ud;

    move-result-object v0

    const-string v2, "23.4.0"

    invoke-static {v1, v2}, Landroidx/appcompat/view/menu/v80;->b(Ljava/lang/String;Ljava/lang/String;)Landroidx/appcompat/view/menu/ud;

    move-result-object v1

    filled-new-array {v0, v1}, [Landroidx/appcompat/view/menu/ud;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
