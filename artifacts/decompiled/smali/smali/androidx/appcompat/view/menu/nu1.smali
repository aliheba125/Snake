.class public final Landroidx/appcompat/view/menu/nu1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final m:Landroidx/appcompat/view/menu/au1;

.field public final n:I

.field public final o:Ljava/lang/Throwable;

.field public final p:[B

.field public final q:Ljava/lang/String;

.field public final r:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/appcompat/view/menu/au1;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p2}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Landroidx/appcompat/view/menu/nu1;->m:Landroidx/appcompat/view/menu/au1;

    iput p3, p0, Landroidx/appcompat/view/menu/nu1;->n:I

    iput-object p4, p0, Landroidx/appcompat/view/menu/nu1;->o:Ljava/lang/Throwable;

    iput-object p5, p0, Landroidx/appcompat/view/menu/nu1;->p:[B

    iput-object p1, p0, Landroidx/appcompat/view/menu/nu1;->q:Ljava/lang/String;

    iput-object p6, p0, Landroidx/appcompat/view/menu/nu1;->r:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/appcompat/view/menu/au1;ILjava/lang/Throwable;[BLjava/util/Map;Landroidx/appcompat/view/menu/eu1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Landroidx/appcompat/view/menu/nu1;-><init>(Ljava/lang/String;Landroidx/appcompat/view/menu/au1;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu1;->m:Landroidx/appcompat/view/menu/au1;

    iget-object v1, p0, Landroidx/appcompat/view/menu/nu1;->q:Ljava/lang/String;

    iget v2, p0, Landroidx/appcompat/view/menu/nu1;->n:I

    iget-object v3, p0, Landroidx/appcompat/view/menu/nu1;->o:Ljava/lang/Throwable;

    iget-object v4, p0, Landroidx/appcompat/view/menu/nu1;->p:[B

    iget-object v5, p0, Landroidx/appcompat/view/menu/nu1;->r:Ljava/util/Map;

    invoke-interface/range {v0 .. v5}, Landroidx/appcompat/view/menu/au1;->a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void
.end method
