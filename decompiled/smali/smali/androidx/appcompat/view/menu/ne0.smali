.class public final synthetic Landroidx/appcompat/view/menu/ne0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Landroid/app/Activity;

.field public final synthetic n:Ljava/lang/String;

.field public final synthetic o:I

.field public final synthetic p:J

.field public final synthetic q:Z


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Ljava/lang/String;IJZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/ne0;->m:Landroid/app/Activity;

    iput-object p2, p0, Landroidx/appcompat/view/menu/ne0;->n:Ljava/lang/String;

    iput p3, p0, Landroidx/appcompat/view/menu/ne0;->o:I

    iput-wide p4, p0, Landroidx/appcompat/view/menu/ne0;->p:J

    iput-boolean p6, p0, Landroidx/appcompat/view/menu/ne0;->q:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Landroidx/appcompat/view/menu/ne0;->m:Landroid/app/Activity;

    iget-object v1, p0, Landroidx/appcompat/view/menu/ne0;->n:Ljava/lang/String;

    iget v2, p0, Landroidx/appcompat/view/menu/ne0;->o:I

    iget-wide v3, p0, Landroidx/appcompat/view/menu/ne0;->p:J

    iget-boolean v5, p0, Landroidx/appcompat/view/menu/ne0;->q:Z

    invoke-static/range {v0 .. v5}, Lcom/snake/helper/Native;->a(Landroid/app/Activity;Ljava/lang/String;IJZ)V

    return-void
.end method
