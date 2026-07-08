.class public Lcom/google/firebase/datatransport/TransportRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "fire-transport"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroidx/appcompat/view/menu/xd;)Landroidx/appcompat/view/menu/e21;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/datatransport/TransportRegistrar;->lambda$getComponents$0(Landroidx/appcompat/view/menu/xd;)Landroidx/appcompat/view/menu/e21;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getComponents$0(Landroidx/appcompat/view/menu/xd;)Landroidx/appcompat/view/menu/e21;
    .locals 1

    const-class v0, Landroid/content/Context;

    invoke-interface {p0, v0}, Landroidx/appcompat/view/menu/xd;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Landroidx/appcompat/view/menu/k21;->f(Landroid/content/Context;)V

    invoke-static {}, Landroidx/appcompat/view/menu/k21;->c()Landroidx/appcompat/view/menu/k21;

    move-result-object p0

    sget-object v0, Landroidx/appcompat/view/menu/h9;->h:Landroidx/appcompat/view/menu/h9;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/k21;->g(Landroidx/appcompat/view/menu/pl;)Landroidx/appcompat/view/menu/e21;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/appcompat/view/menu/ud;",
            ">;"
        }
    .end annotation

    const-class v0, Landroidx/appcompat/view/menu/e21;

    invoke-static {v0}, Landroidx/appcompat/view/menu/ud;->e(Ljava/lang/Class;)Landroidx/appcompat/view/menu/ud$b;

    move-result-object v0

    const-string v1, "fire-transport"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/ud$b;->h(Ljava/lang/String;)Landroidx/appcompat/view/menu/ud$b;

    move-result-object v0

    const-class v2, Landroid/content/Context;

    invoke-static {v2}, Landroidx/appcompat/view/menu/il;->j(Ljava/lang/Class;)Landroidx/appcompat/view/menu/il;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/ud$b;->b(Landroidx/appcompat/view/menu/il;)Landroidx/appcompat/view/menu/ud$b;

    move-result-object v0

    new-instance v2, Landroidx/appcompat/view/menu/j21;

    invoke-direct {v2}, Landroidx/appcompat/view/menu/j21;-><init>()V

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/ud$b;->f(Landroidx/appcompat/view/menu/de;)Landroidx/appcompat/view/menu/ud$b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ud$b;->d()Landroidx/appcompat/view/menu/ud;

    move-result-object v0

    const-string v2, "18.1.7"

    invoke-static {v1, v2}, Landroidx/appcompat/view/menu/v80;->b(Ljava/lang/String;Ljava/lang/String;)Landroidx/appcompat/view/menu/ud;

    move-result-object v1

    filled-new-array {v0, v1}, [Landroidx/appcompat/view/menu/ud;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
