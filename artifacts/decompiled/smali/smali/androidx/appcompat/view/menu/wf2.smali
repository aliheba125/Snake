.class public final Landroidx/appcompat/view/menu/wf2;
.super Landroidx/appcompat/view/menu/gg1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "internal.platform"

    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/gg1;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/gg1;->n:Ljava/util/Map;

    new-instance v1, Landroidx/appcompat/view/menu/ye1;

    const-string v2, "getVersion"

    invoke-direct {v1, p0, v2}, Landroidx/appcompat/view/menu/ye1;-><init>(Landroidx/appcompat/view/menu/wf2;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/pw1;Ljava/util/List;)Landroidx/appcompat/view/menu/qg1;
    .locals 0

    sget-object p1, Landroidx/appcompat/view/menu/qg1;->e:Landroidx/appcompat/view/menu/qg1;

    return-object p1
.end method
