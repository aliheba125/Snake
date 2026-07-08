.class public final Landroidx/appcompat/view/menu/xp1;
.super Landroidx/appcompat/view/menu/mn1$a;
.source "SourceFile"


# instance fields
.field public final synthetic q:Ljava/lang/String;

.field public final synthetic r:Ljava/lang/String;

.field public final synthetic s:Ljava/lang/Object;

.field public final synthetic t:Z

.field public final synthetic u:Landroidx/appcompat/view/menu/mn1;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/mn1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/xp1;->u:Landroidx/appcompat/view/menu/mn1;

    iput-object p2, p0, Landroidx/appcompat/view/menu/xp1;->q:Ljava/lang/String;

    iput-object p3, p0, Landroidx/appcompat/view/menu/xp1;->r:Ljava/lang/String;

    iput-object p4, p0, Landroidx/appcompat/view/menu/xp1;->s:Ljava/lang/Object;

    iput-boolean p5, p0, Landroidx/appcompat/view/menu/xp1;->t:Z

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/mn1$a;-><init>(Landroidx/appcompat/view/menu/mn1;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    iget-object v0, p0, Landroidx/appcompat/view/menu/xp1;->u:Landroidx/appcompat/view/menu/mn1;

    invoke-static {v0}, Landroidx/appcompat/view/menu/mn1;->d(Landroidx/appcompat/view/menu/mn1;)Landroidx/appcompat/view/menu/fm1;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/appcompat/view/menu/fm1;

    iget-object v2, p0, Landroidx/appcompat/view/menu/xp1;->q:Ljava/lang/String;

    iget-object v3, p0, Landroidx/appcompat/view/menu/xp1;->r:Ljava/lang/String;

    iget-object v0, p0, Landroidx/appcompat/view/menu/xp1;->s:Ljava/lang/Object;

    invoke-static {v0}, Landroidx/appcompat/view/menu/vf0;->k(Ljava/lang/Object;)Landroidx/appcompat/view/menu/b20;

    move-result-object v4

    iget-boolean v5, p0, Landroidx/appcompat/view/menu/xp1;->t:Z

    iget-wide v6, p0, Landroidx/appcompat/view/menu/mn1$a;->m:J

    invoke-interface/range {v1 .. v7}, Landroidx/appcompat/view/menu/fm1;->setUserProperty(Ljava/lang/String;Ljava/lang/String;Landroidx/appcompat/view/menu/b20;ZJ)V

    return-void
.end method
