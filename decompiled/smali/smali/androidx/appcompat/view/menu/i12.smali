.class public final Landroidx/appcompat/view/menu/i12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:J

.field public final synthetic n:Landroidx/appcompat/view/menu/d02;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/d02;J)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/i12;->n:Landroidx/appcompat/view/menu/d02;

    iput-wide p2, p0, Landroidx/appcompat/view/menu/i12;->m:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/i12;->n:Landroidx/appcompat/view/menu/d02;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->i()Landroidx/appcompat/view/menu/tu1;

    move-result-object v0

    iget-object v0, v0, Landroidx/appcompat/view/menu/tu1;->k:Landroidx/appcompat/view/menu/dv1;

    iget-wide v1, p0, Landroidx/appcompat/view/menu/i12;->m:J

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/dv1;->b(J)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/i12;->n:Landroidx/appcompat/view/menu/d02;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->F()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    iget-wide v1, p0, Landroidx/appcompat/view/menu/i12;->m:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Session timeout duration set"

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
