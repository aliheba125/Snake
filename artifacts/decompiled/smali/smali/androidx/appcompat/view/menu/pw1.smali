.class public final Landroidx/appcompat/view/menu/pw1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/appcompat/view/menu/pw1;

.field public b:Landroidx/appcompat/view/menu/fi1;

.field public c:Ljava/util/Map;

.field public d:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/pw1;Landroidx/appcompat/view/menu/fi1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/pw1;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/pw1;->d:Ljava/util/Map;

    iput-object p1, p0, Landroidx/appcompat/view/menu/pw1;->a:Landroidx/appcompat/view/menu/pw1;

    iput-object p2, p0, Landroidx/appcompat/view/menu/pw1;->b:Landroidx/appcompat/view/menu/fi1;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/pf1;)Landroidx/appcompat/view/menu/qg1;
    .locals 3

    sget-object v0, Landroidx/appcompat/view/menu/qg1;->e:Landroidx/appcompat/view/menu/qg1;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pf1;->A()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Landroidx/appcompat/view/menu/pw1;->b:Landroidx/appcompat/view/menu/fi1;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/pf1;->s(I)Landroidx/appcompat/view/menu/qg1;

    move-result-object v0

    invoke-virtual {v2, p0, v0}, Landroidx/appcompat/view/menu/fi1;->a(Landroidx/appcompat/view/menu/pw1;Landroidx/appcompat/view/menu/qg1;)Landroidx/appcompat/view/menu/qg1;

    move-result-object v0

    instance-of v2, v0, Landroidx/appcompat/view/menu/cg1;

    if-eqz v2, :cond_0

    :cond_1
    return-object v0
.end method

.method public final b(Landroidx/appcompat/view/menu/qg1;)Landroidx/appcompat/view/menu/qg1;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/pw1;->b:Landroidx/appcompat/view/menu/fi1;

    invoke-virtual {v0, p0, p1}, Landroidx/appcompat/view/menu/fi1;->a(Landroidx/appcompat/view/menu/pw1;Landroidx/appcompat/view/menu/qg1;)Landroidx/appcompat/view/menu/qg1;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/lang/String;)Landroidx/appcompat/view/menu/qg1;
    .locals 2

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Landroidx/appcompat/view/menu/pw1;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroidx/appcompat/view/menu/pw1;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/qg1;

    return-object p1

    :cond_0
    iget-object v0, v0, Landroidx/appcompat/view/menu/pw1;->a:Landroidx/appcompat/view/menu/pw1;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "%s is not defined"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()Landroidx/appcompat/view/menu/pw1;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/pw1;

    iget-object v1, p0, Landroidx/appcompat/view/menu/pw1;->b:Landroidx/appcompat/view/menu/fi1;

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/view/menu/pw1;-><init>(Landroidx/appcompat/view/menu/pw1;Landroidx/appcompat/view/menu/fi1;)V

    return-object v0
.end method

.method public final e(Ljava/lang/String;Landroidx/appcompat/view/menu/qg1;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/pw1;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    iget-object p2, p0, Landroidx/appcompat/view/menu/pw1;->c:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/pw1;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final f(Ljava/lang/String;Landroidx/appcompat/view/menu/qg1;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/pw1;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/qg1;)V

    iget-object p2, p0, Landroidx/appcompat/view/menu/pw1;->d:Ljava/util/Map;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final g(Ljava/lang/String;)Z
    .locals 2

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Landroidx/appcompat/view/menu/pw1;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, v0, Landroidx/appcompat/view/menu/pw1;->a:Landroidx/appcompat/view/menu/pw1;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final h(Ljava/lang/String;Landroidx/appcompat/view/menu/qg1;)V
    .locals 2

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Landroidx/appcompat/view/menu/pw1;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Landroidx/appcompat/view/menu/pw1;->a:Landroidx/appcompat/view/menu/pw1;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroidx/appcompat/view/menu/pw1;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroidx/appcompat/view/menu/pw1;->a:Landroidx/appcompat/view/menu/pw1;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroidx/appcompat/view/menu/pw1;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    if-nez p2, :cond_1

    iget-object p2, v0, Landroidx/appcompat/view/menu/pw1;->c:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    iget-object v0, v0, Landroidx/appcompat/view/menu/pw1;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method
