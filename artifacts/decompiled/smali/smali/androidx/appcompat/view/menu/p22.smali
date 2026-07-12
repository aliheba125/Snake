.class public final Landroidx/appcompat/view/menu/p22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Landroidx/appcompat/view/menu/fh1;

.field public final synthetic n:Landroidx/appcompat/view/menu/d02;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/d02;Landroidx/appcompat/view/menu/fh1;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/p22;->n:Landroidx/appcompat/view/menu/d02;

    iput-object p2, p0, Landroidx/appcompat/view/menu/p22;->m:Landroidx/appcompat/view/menu/fh1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/p22;->n:Landroidx/appcompat/view/menu/d02;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->i()Landroidx/appcompat/view/menu/tu1;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/p22;->m:Landroidx/appcompat/view/menu/fh1;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/tu1;->z(Landroidx/appcompat/view/menu/fh1;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/p22;->n:Landroidx/appcompat/view/menu/d02;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/hr1;->t()Landroidx/appcompat/view/menu/h42;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/h42;->U(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/p22;->n:Landroidx/appcompat/view/menu/d02;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->J()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/p22;->m:Landroidx/appcompat/view/menu/fh1;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/fh1;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Lower precedence consent source ignored, proposed source"

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
