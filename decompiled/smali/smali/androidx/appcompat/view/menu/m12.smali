.class public final Landroidx/appcompat/view/menu/m12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Ljava/lang/String;

.field public final synthetic n:Ljava/lang/String;

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:J

.field public final synthetic q:Landroidx/appcompat/view/menu/d02;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/d02;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/m12;->q:Landroidx/appcompat/view/menu/d02;

    iput-object p2, p0, Landroidx/appcompat/view/menu/m12;->m:Ljava/lang/String;

    iput-object p3, p0, Landroidx/appcompat/view/menu/m12;->n:Ljava/lang/String;

    iput-object p4, p0, Landroidx/appcompat/view/menu/m12;->o:Ljava/lang/Object;

    iput-wide p5, p0, Landroidx/appcompat/view/menu/m12;->p:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Landroidx/appcompat/view/menu/m12;->q:Landroidx/appcompat/view/menu/d02;

    iget-object v1, p0, Landroidx/appcompat/view/menu/m12;->m:Ljava/lang/String;

    iget-object v2, p0, Landroidx/appcompat/view/menu/m12;->n:Ljava/lang/String;

    iget-object v3, p0, Landroidx/appcompat/view/menu/m12;->o:Ljava/lang/Object;

    iget-wide v4, p0, Landroidx/appcompat/view/menu/m12;->p:J

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/view/menu/d02;->a0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    return-void
.end method
