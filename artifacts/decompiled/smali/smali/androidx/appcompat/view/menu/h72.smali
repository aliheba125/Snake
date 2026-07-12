.class public final Landroidx/appcompat/view/menu/h72;
.super Landroidx/appcompat/view/menu/gg1;
.source "SourceFile"


# instance fields
.field public final o:Landroidx/appcompat/view/menu/bb2;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/appcompat/view/menu/bb2;)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/gg1;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Landroidx/appcompat/view/menu/h72;->o:Landroidx/appcompat/view/menu/bb2;

    iget-object p1, p0, Landroidx/appcompat/view/menu/gg1;->n:Ljava/util/Map;

    new-instance v0, Landroidx/appcompat/view/menu/ic2;

    const-string v1, "getValue"

    invoke-direct {v0, p0, v1, p2}, Landroidx/appcompat/view/menu/ic2;-><init>(Landroidx/appcompat/view/menu/h72;Ljava/lang/String;Landroidx/appcompat/view/menu/bb2;)V

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/pw1;Ljava/util/List;)Landroidx/appcompat/view/menu/qg1;
    .locals 0

    sget-object p1, Landroidx/appcompat/view/menu/qg1;->e:Landroidx/appcompat/view/menu/qg1;

    return-object p1
.end method
