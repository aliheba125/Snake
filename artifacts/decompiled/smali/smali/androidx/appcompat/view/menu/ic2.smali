.class public final Landroidx/appcompat/view/menu/ic2;
.super Landroidx/appcompat/view/menu/gg1;
.source "SourceFile"


# instance fields
.field public final synthetic o:Landroidx/appcompat/view/menu/bb2;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/h72;Ljava/lang/String;Landroidx/appcompat/view/menu/bb2;)V
    .locals 0

    iput-object p3, p0, Landroidx/appcompat/view/menu/ic2;->o:Landroidx/appcompat/view/menu/bb2;

    invoke-direct {p0, p2}, Landroidx/appcompat/view/menu/gg1;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/pw1;Ljava/util/List;)Landroidx/appcompat/view/menu/qg1;
    .locals 2

    const-string v0, "getValue"

    const/4 v1, 0x2

    invoke-static {v0, v1, p2}, Landroidx/appcompat/view/menu/iu1;->g(Ljava/lang/String;ILjava/util/List;)V

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/qg1;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/pw1;->b(Landroidx/appcompat/view/menu/qg1;)Landroidx/appcompat/view/menu/qg1;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/view/menu/qg1;

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/pw1;->b(Landroidx/appcompat/view/menu/qg1;)Landroidx/appcompat/view/menu/qg1;

    move-result-object p1

    invoke-interface {v0}, Landroidx/appcompat/view/menu/qg1;->g()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Landroidx/appcompat/view/menu/ic2;->o:Landroidx/appcompat/view/menu/bb2;

    invoke-interface {v0, p2}, Landroidx/appcompat/view/menu/bb2;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance p1, Landroidx/appcompat/view/menu/ug1;

    invoke-direct {p1, p2}, Landroidx/appcompat/view/menu/ug1;-><init>(Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method
