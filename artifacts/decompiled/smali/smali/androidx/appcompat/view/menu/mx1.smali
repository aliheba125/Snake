.class public final Landroidx/appcompat/view/menu/mx1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Landroidx/appcompat/view/menu/cb2;

.field public final synthetic n:Landroidx/appcompat/view/menu/kx1;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/kx1;Landroidx/appcompat/view/menu/cb2;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/mx1;->n:Landroidx/appcompat/view/menu/kx1;

    iput-object p2, p0, Landroidx/appcompat/view/menu/mx1;->m:Landroidx/appcompat/view/menu/cb2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/mx1;->n:Landroidx/appcompat/view/menu/kx1;

    invoke-static {v0}, Landroidx/appcompat/view/menu/kx1;->j(Landroidx/appcompat/view/menu/kx1;)Landroidx/appcompat/view/menu/o82;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o82;->o0()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/mx1;->n:Landroidx/appcompat/view/menu/kx1;

    invoke-static {v0}, Landroidx/appcompat/view/menu/kx1;->j(Landroidx/appcompat/view/menu/kx1;)Landroidx/appcompat/view/menu/o82;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/mx1;->m:Landroidx/appcompat/view/menu/cb2;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/o82;->Z(Landroidx/appcompat/view/menu/cb2;)V

    return-void
.end method
