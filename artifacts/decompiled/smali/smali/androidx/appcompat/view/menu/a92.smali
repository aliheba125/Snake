.class public final Landroidx/appcompat/view/menu/a92;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Ljava/lang/String;

.field public final synthetic n:Ljava/lang/String;

.field public final synthetic o:Landroid/os/Bundle;

.field public final synthetic p:Landroidx/appcompat/view/menu/c92;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/c92;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/a92;->p:Landroidx/appcompat/view/menu/c92;

    iput-object p2, p0, Landroidx/appcompat/view/menu/a92;->m:Ljava/lang/String;

    iput-object p3, p0, Landroidx/appcompat/view/menu/a92;->n:Ljava/lang/String;

    iput-object p4, p0, Landroidx/appcompat/view/menu/a92;->o:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Landroidx/appcompat/view/menu/a92;->p:Landroidx/appcompat/view/menu/c92;

    iget-object v0, v0, Landroidx/appcompat/view/menu/c92;->a:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o82;->n0()Landroidx/appcompat/view/menu/x92;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/a92;->m:Ljava/lang/String;

    iget-object v3, p0, Landroidx/appcompat/view/menu/a92;->n:Ljava/lang/String;

    iget-object v4, p0, Landroidx/appcompat/view/menu/a92;->o:Landroid/os/Bundle;

    const-string v5, "auto"

    iget-object v0, p0, Landroidx/appcompat/view/menu/a92;->p:Landroidx/appcompat/view/menu/c92;

    iget-object v0, v0, Landroidx/appcompat/view/menu/c92;->a:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o82;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/view/menu/cc;->a()J

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v1 .. v9}, Landroidx/appcompat/view/menu/x92;->G(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Landroidx/appcompat/view/menu/oi1;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/a92;->p:Landroidx/appcompat/view/menu/c92;

    iget-object v1, v1, Landroidx/appcompat/view/menu/c92;->a:Landroidx/appcompat/view/menu/o82;

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/oi1;

    iget-object v2, p0, Landroidx/appcompat/view/menu/a92;->m:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/view/menu/o82;->r(Landroidx/appcompat/view/menu/oi1;Ljava/lang/String;)V

    return-void
.end method
