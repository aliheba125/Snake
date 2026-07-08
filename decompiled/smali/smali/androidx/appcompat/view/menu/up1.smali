.class public final Landroidx/appcompat/view/menu/up1;
.super Landroidx/appcompat/view/menu/mn1$a;
.source "SourceFile"


# instance fields
.field public final synthetic q:Ljava/lang/Long;

.field public final synthetic r:Ljava/lang/String;

.field public final synthetic s:Ljava/lang/String;

.field public final synthetic t:Landroid/os/Bundle;

.field public final synthetic u:Z

.field public final synthetic v:Z

.field public final synthetic w:Landroidx/appcompat/view/menu/mn1;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/mn1;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZ)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/up1;->w:Landroidx/appcompat/view/menu/mn1;

    iput-object p2, p0, Landroidx/appcompat/view/menu/up1;->q:Ljava/lang/Long;

    iput-object p3, p0, Landroidx/appcompat/view/menu/up1;->r:Ljava/lang/String;

    iput-object p4, p0, Landroidx/appcompat/view/menu/up1;->s:Ljava/lang/String;

    iput-object p5, p0, Landroidx/appcompat/view/menu/up1;->t:Landroid/os/Bundle;

    iput-boolean p6, p0, Landroidx/appcompat/view/menu/up1;->u:Z

    iput-boolean p7, p0, Landroidx/appcompat/view/menu/up1;->v:Z

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/mn1$a;-><init>(Landroidx/appcompat/view/menu/mn1;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    iget-object v0, p0, Landroidx/appcompat/view/menu/up1;->q:Ljava/lang/Long;

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroidx/appcompat/view/menu/mn1$a;->m:J

    :goto_0
    move-wide v8, v0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/up1;->w:Landroidx/appcompat/view/menu/mn1;

    invoke-static {v0}, Landroidx/appcompat/view/menu/mn1;->d(Landroidx/appcompat/view/menu/mn1;)Landroidx/appcompat/view/menu/fm1;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/appcompat/view/menu/fm1;

    iget-object v3, p0, Landroidx/appcompat/view/menu/up1;->r:Ljava/lang/String;

    iget-object v4, p0, Landroidx/appcompat/view/menu/up1;->s:Ljava/lang/String;

    iget-object v5, p0, Landroidx/appcompat/view/menu/up1;->t:Landroid/os/Bundle;

    iget-boolean v6, p0, Landroidx/appcompat/view/menu/up1;->u:Z

    iget-boolean v7, p0, Landroidx/appcompat/view/menu/up1;->v:Z

    invoke-interface/range {v2 .. v9}, Landroidx/appcompat/view/menu/fm1;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    return-void
.end method
