.class public final Landroidx/appcompat/view/menu/d32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Z

.field public final synthetic n:Landroid/net/Uri;

.field public final synthetic o:Ljava/lang/String;

.field public final synthetic p:Ljava/lang/String;

.field public final synthetic q:Landroidx/appcompat/view/menu/r22;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/r22;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/d32;->q:Landroidx/appcompat/view/menu/r22;

    iput-boolean p2, p0, Landroidx/appcompat/view/menu/d32;->m:Z

    iput-object p3, p0, Landroidx/appcompat/view/menu/d32;->n:Landroid/net/Uri;

    iput-object p4, p0, Landroidx/appcompat/view/menu/d32;->o:Ljava/lang/String;

    iput-object p5, p0, Landroidx/appcompat/view/menu/d32;->p:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/view/menu/d32;->q:Landroidx/appcompat/view/menu/r22;

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/d32;->m:Z

    iget-object v2, p0, Landroidx/appcompat/view/menu/d32;->n:Landroid/net/Uri;

    iget-object v3, p0, Landroidx/appcompat/view/menu/d32;->o:Ljava/lang/String;

    iget-object v4, p0, Landroidx/appcompat/view/menu/d32;->p:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/appcompat/view/menu/r22;->a(Landroidx/appcompat/view/menu/r22;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
