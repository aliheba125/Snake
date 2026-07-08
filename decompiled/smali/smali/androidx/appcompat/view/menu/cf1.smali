.class public final Landroidx/appcompat/view/menu/cf1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroidx/appcompat/view/menu/hf1;

.field public b:Landroidx/appcompat/view/menu/hf1;

.field public c:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/appcompat/view/menu/hf1;

    const-string v1, ""

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/appcompat/view/menu/hf1;-><init>(Ljava/lang/String;JLjava/util/Map;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/cf1;->a:Landroidx/appcompat/view/menu/hf1;

    .line 3
    new-instance v0, Landroidx/appcompat/view/menu/hf1;

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/appcompat/view/menu/hf1;-><init>(Ljava/lang/String;JLjava/util/Map;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/cf1;->b:Landroidx/appcompat/view/menu/hf1;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/cf1;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/hf1;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/cf1;->a:Landroidx/appcompat/view/menu/hf1;

    .line 6
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/hf1;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/hf1;

    iput-object p1, p0, Landroidx/appcompat/view/menu/cf1;->b:Landroidx/appcompat/view/menu/hf1;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/cf1;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/appcompat/view/menu/hf1;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/cf1;->a:Landroidx/appcompat/view/menu/hf1;

    return-object v0
.end method

.method public final b(Landroidx/appcompat/view/menu/hf1;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/cf1;->a:Landroidx/appcompat/view/menu/hf1;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/hf1;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/hf1;

    iput-object p1, p0, Landroidx/appcompat/view/menu/cf1;->b:Landroidx/appcompat/view/menu/hf1;

    iget-object p1, p0, Landroidx/appcompat/view/menu/cf1;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final c(Ljava/lang/String;JLjava/util/Map;)V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Landroidx/appcompat/view/menu/cf1;->a:Landroidx/appcompat/view/menu/hf1;

    invoke-virtual {v3, v2}, Landroidx/appcompat/view/menu/hf1;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroidx/appcompat/view/menu/hf1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p4, p0, Landroidx/appcompat/view/menu/cf1;->c:Ljava/util/List;

    new-instance v1, Landroidx/appcompat/view/menu/hf1;

    invoke-direct {v1, p1, p2, p3, v0}, Landroidx/appcompat/view/menu/hf1;-><init>(Ljava/lang/String;JLjava/util/Map;)V

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 4

    new-instance v0, Landroidx/appcompat/view/menu/cf1;

    iget-object v1, p0, Landroidx/appcompat/view/menu/cf1;->a:Landroidx/appcompat/view/menu/hf1;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/hf1;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/hf1;

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/cf1;-><init>(Landroidx/appcompat/view/menu/hf1;)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/cf1;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/hf1;

    iget-object v3, v0, Landroidx/appcompat/view/menu/cf1;->c:Ljava/util/List;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/hf1;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/hf1;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final d()Landroidx/appcompat/view/menu/hf1;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/cf1;->b:Landroidx/appcompat/view/menu/hf1;

    return-object v0
.end method

.method public final e(Landroidx/appcompat/view/menu/hf1;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/cf1;->b:Landroidx/appcompat/view/menu/hf1;

    return-void
.end method

.method public final f()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/cf1;->c:Ljava/util/List;

    return-object v0
.end method
