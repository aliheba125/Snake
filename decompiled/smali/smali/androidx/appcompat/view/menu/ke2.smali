.class public final Landroidx/appcompat/view/menu/ke2;
.super Landroidx/appcompat/view/menu/gg1;
.source "SourceFile"


# instance fields
.field public final o:Landroidx/appcompat/view/menu/hf2;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/hf2;)V
    .locals 5

    const-string v0, "internal.logger"

    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/gg1;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/ke2;->o:Landroidx/appcompat/view/menu/hf2;

    iget-object p1, p0, Landroidx/appcompat/view/menu/gg1;->n:Ljava/util/Map;

    new-instance v0, Landroidx/appcompat/view/menu/bf2;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroidx/appcompat/view/menu/bf2;-><init>(Landroidx/appcompat/view/menu/ke2;ZZ)V

    const-string v3, "log"

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Landroidx/appcompat/view/menu/gg1;->n:Ljava/util/Map;

    new-instance v0, Landroidx/appcompat/view/menu/pd2;

    const-string v4, "silent"

    invoke-direct {v0, p0, v4}, Landroidx/appcompat/view/menu/pd2;-><init>(Landroidx/appcompat/view/menu/ke2;Ljava/lang/String;)V

    invoke-interface {p1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Landroidx/appcompat/view/menu/gg1;->n:Ljava/util/Map;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/gg1;

    new-instance v0, Landroidx/appcompat/view/menu/bf2;

    invoke-direct {v0, p0, v2, v2}, Landroidx/appcompat/view/menu/bf2;-><init>(Landroidx/appcompat/view/menu/ke2;ZZ)V

    invoke-virtual {p1, v3, v0}, Landroidx/appcompat/view/menu/gg1;->n(Ljava/lang/String;Landroidx/appcompat/view/menu/qg1;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/gg1;->n:Ljava/util/Map;

    new-instance v0, Landroidx/appcompat/view/menu/ve2;

    const-string v2, "unmonitored"

    invoke-direct {v0, p0, v2}, Landroidx/appcompat/view/menu/ve2;-><init>(Landroidx/appcompat/view/menu/ke2;Ljava/lang/String;)V

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Landroidx/appcompat/view/menu/gg1;->n:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/gg1;

    new-instance v0, Landroidx/appcompat/view/menu/bf2;

    invoke-direct {v0, p0, v1, v1}, Landroidx/appcompat/view/menu/bf2;-><init>(Landroidx/appcompat/view/menu/ke2;ZZ)V

    invoke-virtual {p1, v3, v0}, Landroidx/appcompat/view/menu/gg1;->n(Ljava/lang/String;Landroidx/appcompat/view/menu/qg1;)V

    return-void
.end method

.method public static bridge synthetic e(Landroidx/appcompat/view/menu/ke2;)Landroidx/appcompat/view/menu/hf2;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/ke2;->o:Landroidx/appcompat/view/menu/hf2;

    return-object p0
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/pw1;Ljava/util/List;)Landroidx/appcompat/view/menu/qg1;
    .locals 0

    sget-object p1, Landroidx/appcompat/view/menu/qg1;->e:Landroidx/appcompat/view/menu/qg1;

    return-object p1
.end method
