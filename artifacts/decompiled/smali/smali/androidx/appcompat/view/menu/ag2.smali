.class public final Landroidx/appcompat/view/menu/ag2;
.super Landroidx/appcompat/view/menu/gg1;
.source "SourceFile"


# instance fields
.field public final o:Landroidx/appcompat/view/menu/c52;

.field public final p:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/c52;)V
    .locals 1

    const-string v0, "require"

    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/gg1;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/ag2;->p:Ljava/util/Map;

    iput-object p1, p0, Landroidx/appcompat/view/menu/ag2;->o:Landroidx/appcompat/view/menu/c52;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/pw1;Ljava/util/List;)Landroidx/appcompat/view/menu/qg1;
    .locals 2

    const-string v0, "require"

    const/4 v1, 0x1

    invoke-static {v0, v1, p2}, Landroidx/appcompat/view/menu/iu1;->g(Ljava/lang/String;ILjava/util/List;)V

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/view/menu/qg1;

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/pw1;->b(Landroidx/appcompat/view/menu/qg1;)Landroidx/appcompat/view/menu/qg1;

    move-result-object p1

    invoke-interface {p1}, Landroidx/appcompat/view/menu/qg1;->g()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Landroidx/appcompat/view/menu/ag2;->p:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/appcompat/view/menu/ag2;->p:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/qg1;

    return-object p1

    :cond_0
    iget-object p2, p0, Landroidx/appcompat/view/menu/ag2;->o:Landroidx/appcompat/view/menu/c52;

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/c52;->a(Ljava/lang/String;)Landroidx/appcompat/view/menu/qg1;

    move-result-object p2

    instance-of v0, p2, Landroidx/appcompat/view/menu/gg1;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ag2;->p:Ljava/util/Map;

    move-object v1, p2

    check-cast v1, Landroidx/appcompat/view/menu/gg1;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p2
.end method
