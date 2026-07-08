.class public Landroidx/appcompat/view/menu/u90;
.super Landroidx/appcompat/view/menu/ob;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/u90$a;
    }
.end annotation


# instance fields
.field public p:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/ob;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/u90;->p:Ljava/lang/Object;

    return-object v0
.end method

.method public i(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/view/menu/ob;->j()V

    new-instance v0, Landroidx/appcompat/view/menu/u90$a;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/u90$a;-><init>()V

    const-string v1, "onLocationChanged"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    return-void
.end method

.method public l(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/u90;->p:Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ob;->b()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ob;->g()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
