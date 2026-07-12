.class public final Landroidx/appcompat/view/menu/tn1;
.super Landroidx/appcompat/view/menu/mn1$a;
.source "SourceFile"


# instance fields
.field public final synthetic q:Ljava/lang/String;

.field public final synthetic r:Ljava/lang/String;

.field public final synthetic s:Landroid/content/Context;

.field public final synthetic t:Landroid/os/Bundle;

.field public final synthetic u:Landroidx/appcompat/view/menu/mn1;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/mn1;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/tn1;->u:Landroidx/appcompat/view/menu/mn1;

    iput-object p2, p0, Landroidx/appcompat/view/menu/tn1;->q:Ljava/lang/String;

    iput-object p3, p0, Landroidx/appcompat/view/menu/tn1;->r:Ljava/lang/String;

    iput-object p4, p0, Landroidx/appcompat/view/menu/tn1;->s:Landroid/content/Context;

    iput-object p5, p0, Landroidx/appcompat/view/menu/tn1;->t:Landroid/os/Bundle;

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/mn1$a;-><init>(Landroidx/appcompat/view/menu/mn1;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 15

    const-string v0, "com.google.android.gms.measurement.dynamite"

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Landroidx/appcompat/view/menu/tn1;->u:Landroidx/appcompat/view/menu/mn1;

    iget-object v4, p0, Landroidx/appcompat/view/menu/tn1;->q:Ljava/lang/String;

    iget-object v5, p0, Landroidx/appcompat/view/menu/tn1;->r:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Landroidx/appcompat/view/menu/mn1;->t(Landroidx/appcompat/view/menu/mn1;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroidx/appcompat/view/menu/tn1;->r:Ljava/lang/String;

    iget-object v4, p0, Landroidx/appcompat/view/menu/tn1;->q:Ljava/lang/String;

    iget-object v5, p0, Landroidx/appcompat/view/menu/tn1;->u:Landroidx/appcompat/view/menu/mn1;

    invoke-static {v5}, Landroidx/appcompat/view/menu/mn1;->v(Landroidx/appcompat/view/menu/mn1;)Ljava/lang/String;

    move-result-object v5

    move-object v12, v3

    move-object v11, v4

    move-object v10, v5

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    const/4 v3, 0x0

    move-object v10, v3

    move-object v11, v10

    move-object v12, v11

    :goto_0
    iget-object v3, p0, Landroidx/appcompat/view/menu/tn1;->s:Landroid/content/Context;

    invoke-static {v3}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Landroidx/appcompat/view/menu/tn1;->u:Landroidx/appcompat/view/menu/mn1;

    iget-object v4, p0, Landroidx/appcompat/view/menu/tn1;->s:Landroid/content/Context;

    invoke-virtual {v3, v4, v2}, Landroidx/appcompat/view/menu/mn1;->c(Landroid/content/Context;Z)Landroidx/appcompat/view/menu/fm1;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/appcompat/view/menu/mn1;->m(Landroidx/appcompat/view/menu/mn1;Landroidx/appcompat/view/menu/fm1;)V

    iget-object v3, p0, Landroidx/appcompat/view/menu/tn1;->u:Landroidx/appcompat/view/menu/mn1;

    invoke-static {v3}, Landroidx/appcompat/view/menu/mn1;->d(Landroidx/appcompat/view/menu/mn1;)Landroidx/appcompat/view/menu/fm1;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/tn1;->u:Landroidx/appcompat/view/menu/mn1;

    invoke-static {v0}, Landroidx/appcompat/view/menu/mn1;->v(Landroidx/appcompat/view/menu/mn1;)Ljava/lang/String;

    return-void

    :cond_1
    iget-object v3, p0, Landroidx/appcompat/view/menu/tn1;->s:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Landroidx/appcompat/view/menu/tn1;->s:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-ge v0, v3, :cond_2

    move v9, v2

    goto :goto_1

    :cond_2
    move v9, v1

    :goto_1
    new-instance v0, Landroidx/appcompat/view/menu/jn1;

    const-wide/32 v5, 0x14051

    int-to-long v7, v4

    iget-object v13, p0, Landroidx/appcompat/view/menu/tn1;->t:Landroid/os/Bundle;

    iget-object v3, p0, Landroidx/appcompat/view/menu/tn1;->s:Landroid/content/Context;

    invoke-static {v3}, Landroidx/appcompat/view/menu/lw1;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    move-object v4, v0

    invoke-direct/range {v4 .. v14}, Landroidx/appcompat/view/menu/jn1;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/appcompat/view/menu/tn1;->u:Landroidx/appcompat/view/menu/mn1;

    invoke-static {v3}, Landroidx/appcompat/view/menu/mn1;->d(Landroidx/appcompat/view/menu/mn1;)Landroidx/appcompat/view/menu/fm1;

    move-result-object v3

    invoke-static {v3}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/fm1;

    iget-object v4, p0, Landroidx/appcompat/view/menu/tn1;->s:Landroid/content/Context;

    invoke-static {v4}, Landroidx/appcompat/view/menu/vf0;->k(Ljava/lang/Object;)Landroidx/appcompat/view/menu/b20;

    move-result-object v4

    iget-wide v5, p0, Landroidx/appcompat/view/menu/mn1$a;->m:J

    invoke-interface {v3, v4, v0, v5, v6}, Landroidx/appcompat/view/menu/fm1;->initialize(Landroidx/appcompat/view/menu/b20;Landroidx/appcompat/view/menu/jn1;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    iget-object v3, p0, Landroidx/appcompat/view/menu/tn1;->u:Landroidx/appcompat/view/menu/mn1;

    invoke-static {v3, v0, v2, v1}, Landroidx/appcompat/view/menu/mn1;->o(Landroidx/appcompat/view/menu/mn1;Ljava/lang/Exception;ZZ)V

    return-void
.end method
