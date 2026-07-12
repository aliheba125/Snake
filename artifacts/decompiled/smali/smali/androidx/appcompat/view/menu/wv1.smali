.class public final Landroidx/appcompat/view/menu/wv1;
.super Landroidx/appcompat/view/menu/ov1;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/ew1;Ljava/lang/String;Ljava/lang/Long;Z)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/ov1;-><init>(Landroidx/appcompat/view/menu/ew1;Ljava/lang/String;Ljava/lang/Object;ZLandroidx/appcompat/view/menu/iw1;)V

    return-void
.end method


# virtual methods
.method public final synthetic h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/wv1;->o(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final o(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 3

    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Long;

    return-object p1

    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    :try_start_0
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_1
    invoke-super {p0}, Landroidx/appcompat/view/menu/ov1;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid long value for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    return-object p1
.end method
