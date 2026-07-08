.class public final Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/appcompat/view/menu/ud;",
            ">;"
        }
    .end annotation

    const-class v0, Landroidx/appcompat/view/menu/u7;

    const-class v1, Landroidx/appcompat/view/menu/nh;

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/ul0;->a(Ljava/lang/Class;Ljava/lang/Class;)Landroidx/appcompat/view/menu/ul0;

    move-result-object v2

    invoke-static {v2}, Landroidx/appcompat/view/menu/ud;->c(Landroidx/appcompat/view/menu/ul0;)Landroidx/appcompat/view/menu/ud$b;

    move-result-object v2

    const-class v3, Ljava/util/concurrent/Executor;

    invoke-static {v0, v3}, Landroidx/appcompat/view/menu/ul0;->a(Ljava/lang/Class;Ljava/lang/Class;)Landroidx/appcompat/view/menu/ul0;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/il;->i(Landroidx/appcompat/view/menu/ul0;)Landroidx/appcompat/view/menu/il;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/appcompat/view/menu/ud$b;->b(Landroidx/appcompat/view/menu/il;)Landroidx/appcompat/view/menu/ud$b;

    move-result-object v0

    sget-object v2, Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$a;->a:Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$a;

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/ud$b;->f(Landroidx/appcompat/view/menu/de;)Landroidx/appcompat/view/menu/ud$b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ud$b;->d()Landroidx/appcompat/view/menu/ud;

    move-result-object v0

    const-string v2, "builder(Qualified.qualif\u2026cher()\n    }\n    .build()"

    invoke-static {v0, v2}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v4, Landroidx/appcompat/view/menu/c90;

    invoke-static {v4, v1}, Landroidx/appcompat/view/menu/ul0;->a(Ljava/lang/Class;Ljava/lang/Class;)Landroidx/appcompat/view/menu/ul0;

    move-result-object v5

    invoke-static {v5}, Landroidx/appcompat/view/menu/ud;->c(Landroidx/appcompat/view/menu/ul0;)Landroidx/appcompat/view/menu/ud$b;

    move-result-object v5

    invoke-static {v4, v3}, Landroidx/appcompat/view/menu/ul0;->a(Ljava/lang/Class;Ljava/lang/Class;)Landroidx/appcompat/view/menu/ul0;

    move-result-object v4

    invoke-static {v4}, Landroidx/appcompat/view/menu/il;->i(Landroidx/appcompat/view/menu/ul0;)Landroidx/appcompat/view/menu/il;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroidx/appcompat/view/menu/ud$b;->b(Landroidx/appcompat/view/menu/il;)Landroidx/appcompat/view/menu/ud$b;

    move-result-object v4

    sget-object v5, Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$b;->a:Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$b;

    invoke-virtual {v4, v5}, Landroidx/appcompat/view/menu/ud$b;->f(Landroidx/appcompat/view/menu/de;)Landroidx/appcompat/view/menu/ud$b;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/ud$b;->d()Landroidx/appcompat/view/menu/ud;

    move-result-object v4

    invoke-static {v4, v2}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v5, Landroidx/appcompat/view/menu/k8;

    invoke-static {v5, v1}, Landroidx/appcompat/view/menu/ul0;->a(Ljava/lang/Class;Ljava/lang/Class;)Landroidx/appcompat/view/menu/ul0;

    move-result-object v6

    invoke-static {v6}, Landroidx/appcompat/view/menu/ud;->c(Landroidx/appcompat/view/menu/ul0;)Landroidx/appcompat/view/menu/ud$b;

    move-result-object v6

    invoke-static {v5, v3}, Landroidx/appcompat/view/menu/ul0;->a(Ljava/lang/Class;Ljava/lang/Class;)Landroidx/appcompat/view/menu/ul0;

    move-result-object v5

    invoke-static {v5}, Landroidx/appcompat/view/menu/il;->i(Landroidx/appcompat/view/menu/ul0;)Landroidx/appcompat/view/menu/il;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroidx/appcompat/view/menu/ud$b;->b(Landroidx/appcompat/view/menu/il;)Landroidx/appcompat/view/menu/ud$b;

    move-result-object v5

    sget-object v6, Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$c;->a:Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$c;

    invoke-virtual {v5, v6}, Landroidx/appcompat/view/menu/ud$b;->f(Landroidx/appcompat/view/menu/de;)Landroidx/appcompat/view/menu/ud$b;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/ud$b;->d()Landroidx/appcompat/view/menu/ud;

    move-result-object v5

    invoke-static {v5, v2}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v6, Landroidx/appcompat/view/menu/f31;

    invoke-static {v6, v1}, Landroidx/appcompat/view/menu/ul0;->a(Ljava/lang/Class;Ljava/lang/Class;)Landroidx/appcompat/view/menu/ul0;

    move-result-object v1

    invoke-static {v1}, Landroidx/appcompat/view/menu/ud;->c(Landroidx/appcompat/view/menu/ul0;)Landroidx/appcompat/view/menu/ud$b;

    move-result-object v1

    invoke-static {v6, v3}, Landroidx/appcompat/view/menu/ul0;->a(Ljava/lang/Class;Ljava/lang/Class;)Landroidx/appcompat/view/menu/ul0;

    move-result-object v3

    invoke-static {v3}, Landroidx/appcompat/view/menu/il;->i(Landroidx/appcompat/view/menu/ul0;)Landroidx/appcompat/view/menu/il;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/appcompat/view/menu/ud$b;->b(Landroidx/appcompat/view/menu/il;)Landroidx/appcompat/view/menu/ud$b;

    move-result-object v1

    sget-object v3, Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$d;->a:Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$d;

    invoke-virtual {v1, v3}, Landroidx/appcompat/view/menu/ud$b;->f(Landroidx/appcompat/view/menu/de;)Landroidx/appcompat/view/menu/ud$b;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ud$b;->d()Landroidx/appcompat/view/menu/ud;

    move-result-object v1

    invoke-static {v1, v2}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v0, v4, v5, v1}, [Landroidx/appcompat/view/menu/ud;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/qc;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
