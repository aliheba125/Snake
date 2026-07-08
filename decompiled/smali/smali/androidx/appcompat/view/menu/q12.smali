.class public final Landroidx/appcompat/view/menu/q12;
.super Landroidx/appcompat/view/menu/bh1;
.source "SourceFile"


# instance fields
.field public final synthetic e:Landroidx/appcompat/view/menu/d02;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/d02;Landroidx/appcompat/view/menu/iz1;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/q12;->e:Landroidx/appcompat/view/menu/d02;

    invoke-direct {p0, p2}, Landroidx/appcompat/view/menu/bh1;-><init>(Landroidx/appcompat/view/menu/iz1;)V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/q12;->e:Landroidx/appcompat/view/menu/d02;

    iget-object v0, v0, Landroidx/appcompat/view/menu/fz1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/q12;->e:Landroidx/appcompat/view/menu/d02;

    invoke-static {v0}, Landroidx/appcompat/view/menu/d02;->B(Landroidx/appcompat/view/menu/d02;)Landroidx/appcompat/view/menu/bh1;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/bh1;->b(J)V

    :cond_0
    return-void
.end method
