.class public final Landroidx/appcompat/view/menu/l31$a;
.super Landroidx/appcompat/view/menu/ly0;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/tw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/l31;-><init>(Landroidx/appcompat/view/menu/ts;Landroidx/appcompat/view/menu/kh;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public q:I

.field public synthetic r:Ljava/lang/Object;

.field public final synthetic s:Landroidx/appcompat/view/menu/ts;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/ts;Landroidx/appcompat/view/menu/xg;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/l31$a;->s:Landroidx/appcompat/view/menu/ts;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/view/menu/ly0;-><init>(ILandroidx/appcompat/view/menu/xg;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Landroidx/appcompat/view/menu/xg;)Landroidx/appcompat/view/menu/xg;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/l31$a;

    iget-object v1, p0, Landroidx/appcompat/view/menu/l31$a;->s:Landroidx/appcompat/view/menu/ts;

    invoke-direct {v0, v1, p2}, Landroidx/appcompat/view/menu/l31$a;-><init>(Landroidx/appcompat/view/menu/ts;Landroidx/appcompat/view/menu/xg;)V

    iput-object p1, v0, Landroidx/appcompat/view/menu/l31$a;->r:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Landroidx/appcompat/view/menu/xg;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/l31$a;->o(Ljava/lang/Object;Landroidx/appcompat/view/menu/xg;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Landroidx/appcompat/view/menu/a60;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/appcompat/view/menu/l31$a;->q:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Landroidx/appcompat/view/menu/op0;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Landroidx/appcompat/view/menu/op0;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/l31$a;->r:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/appcompat/view/menu/l31$a;->s:Landroidx/appcompat/view/menu/ts;

    iput v2, p0, Landroidx/appcompat/view/menu/l31$a;->q:I

    invoke-interface {v1, p1, p0}, Landroidx/appcompat/view/menu/ts;->a(Ljava/lang/Object;Landroidx/appcompat/view/menu/xg;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;

    return-object p1
.end method

.method public final o(Ljava/lang/Object;Landroidx/appcompat/view/menu/xg;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/l31$a;->a(Ljava/lang/Object;Landroidx/appcompat/view/menu/xg;)Landroidx/appcompat/view/menu/xg;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/l31$a;

    sget-object p2, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/l31$a;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
