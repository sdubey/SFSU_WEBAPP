<html>
<head>
<script
src="<c:url value="/resources/core/jquery.autocomplete.min.js" />"></script>
</head>
<body>

	<table border="1">
	<tr >
	
	<th  colspan="2">SETAP Login</th>
	</tr>
		<tr>
			<td width="50%">

				<p align="left">About SETAP: Lorem Ipsum is simply dummy text
					of the printing and typesetting industry. Lorem Ipsum has been the
					industry's standard dummy text ever since the 1500s , when an
					unknown printer took a galley of type and scrambled it to make a
					type specimen book. It has survived not only five centuries, but
					also the leap into electronicv typesetting, remaining essentially
					unchanged. It was popularised in the 1960s with the release of
					Letraset sheets containing Lorem Ipsum passages, and more recently
					with desktop publishing software like Aldus PageMaker including
					versions of Lorem Ipsum.<br><br> for more information about SETAP
					</p>
				<ul>
				    <li><a href="about_setap">Click here !!</a></li>
				</ul>
			</td>
			<td width="50%" align="center">
				<form action="home">
					<table>
						<tr>
							<th colspan="2">
								<h4 align="center">LogIn in to continue</h4>
							</th>
						</tr>
						<tr>
						<td><p>Fields with <span class="red">*</span> are required fields</p></td>
						</tr>
						<tr>
							<td>User name (*):</td>
							<td><input type="text" name="username" size="20"></td>
						</tr>
						<tr>
							<td>Password (*):</td>
							<td><input type="password" name="password" size="20">
								<br></td>
						</tr>
						<tr>
							<td colspan="2" align="center"><input type="submit" value="   Sign In  "></td>
						</tr>
						<tr>
						<td align="center">
						<a>Can not access account?</a>
						</td>
						</tr>
						<tr>
						<td colspan="2" align="center"><input type="Submit" value="Create New Account"></td>
						</tr>
					</table>
				</form>
			</td>

		</tr>
	</table>

	<%@ include file="footer.jsp"%>
</body>
</html>