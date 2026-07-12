.class public final Landroidx/appcompat/view/menu/mc2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/ey0;


# static fields
.field public static n:Landroidx/appcompat/view/menu/mc2;


# instance fields
.field public final m:Landroidx/appcompat/view/menu/ey0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/mc2;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/mc2;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/mc2;->n:Landroidx/appcompat/view/menu/mc2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/appcompat/view/menu/oc2;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/oc2;-><init>()V

    invoke-static {v0}, Landroidx/appcompat/view/menu/gy0;->b(Ljava/lang/Object;)Landroidx/appcompat/view/menu/ey0;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/mc2;->m:Landroidx/appcompat/view/menu/ey0;

    return-void
.end method

.method public static a()D
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/mc2;->n:Landroidx/appcompat/view/menu/mc2;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mc2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/pc2;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/pc2;->a()D

    move-result-wide v0

    return-wide v0
.end method

.method public static b()J
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/mc2;->n:Landroidx/appcompat/view/menu/mc2;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mc2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/pc2;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/pc2;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public static c()J
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/mc2;->n:Landroidx/appcompat/view/menu/mc2;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mc2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/pc2;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/pc2;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/mc2;->n:Landroidx/appcompat/view/menu/mc2;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mc2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/pc2;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/pc2;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e()Z
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/mc2;->n:Landroidx/appcompat/view/menu/mc2;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mc2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/pc2;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/pc2;->f()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/mc2;->m:Landroidx/appcompat/view/menu/ey0;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/ey0;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/pc2;

    return-object v0
.end method
