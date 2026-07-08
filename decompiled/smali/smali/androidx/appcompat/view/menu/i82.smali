.class public final Landroidx/appcompat/view/menu/i82;
.super Landroidx/appcompat/view/menu/bh1;
.source "SourceFile"


# instance fields
.field public final synthetic e:Landroidx/appcompat/view/menu/c82;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/c82;Landroidx/appcompat/view/menu/iz1;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/i82;->e:Landroidx/appcompat/view/menu/c82;

    invoke-direct {p0, p2}, Landroidx/appcompat/view/menu/bh1;-><init>(Landroidx/appcompat/view/menu/iz1;)V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/i82;->e:Landroidx/appcompat/view/menu/c82;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/c82;->z()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/i82;->e:Landroidx/appcompat/view/menu/c82;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v1, "Starting upload from DelayedRunnable"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/i82;->e:Landroidx/appcompat/view/menu/c82;

    iget-object v0, v0, Landroidx/appcompat/view/menu/g82;->b:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o82;->t0()V

    return-void
.end method
