.class public final Landroidx/appcompat/view/menu/gd2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/hd2;


# static fields
.field public static final a:Landroidx/appcompat/view/menu/ov1;

.field public static final b:Landroidx/appcompat/view/menu/ov1;

.field public static final c:Landroidx/appcompat/view/menu/ov1;

.field public static final d:Landroidx/appcompat/view/menu/ov1;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/appcompat/view/menu/ew1;

    const-string v1, "com.google.android.gms.measurement"

    invoke-static {v1}, Landroidx/appcompat/view/menu/iv1;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/ew1;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ew1;->f()Landroidx/appcompat/view/menu/ew1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ew1;->e()Landroidx/appcompat/view/menu/ew1;

    move-result-object v0

    const-string v1, "measurement.collection.enable_session_stitching_token.client.dev"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/ew1;->d(Ljava/lang/String;Z)Landroidx/appcompat/view/menu/ov1;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/gd2;->a:Landroidx/appcompat/view/menu/ov1;

    const-string v1, "measurement.collection.enable_session_stitching_token.first_open_fix"

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/ew1;->d(Ljava/lang/String;Z)Landroidx/appcompat/view/menu/ov1;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/gd2;->b:Landroidx/appcompat/view/menu/ov1;

    const-string v1, "measurement.session_stitching_token_enabled"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/view/menu/ew1;->d(Ljava/lang/String;Z)Landroidx/appcompat/view/menu/ov1;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/gd2;->c:Landroidx/appcompat/view/menu/ov1;

    const-string v1, "measurement.link_sst_to_sid"

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/ew1;->d(Ljava/lang/String;Z)Landroidx/appcompat/view/menu/ov1;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/gd2;->d:Landroidx/appcompat/view/menu/ov1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()Z
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/gd2;->a:Landroidx/appcompat/view/menu/ov1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ov1;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/gd2;->b:Landroidx/appcompat/view/menu/ov1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ov1;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/gd2;->c:Landroidx/appcompat/view/menu/ov1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ov1;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
